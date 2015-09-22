#!/usr/bin/ruby
# coding: utf-8

require 'optparse'

Script_dir = File.expand_path(File.dirname(__FILE__))

begin
  params = ARGV.getopts('c:f:', "component", "footprint").map{|k, v| [k.to_sym, v]}.to_h
rescue OptionParser::InvalidOption
  p "Invalid options"
  exit 1
end

params[:component] ||= params[:c]
params[:component] = File.expand_path(params[:component].sub(/\.(lib|dcm)$/, ""))
unless File.exist?(params[:component]+ ".lib") and File.exist?(params[:component]+ ".dcm")
  STDERR.print "No such library: #{params[:component]}\n"
  exit 1
end
params[:footprint] ||= params[:f]
params[:footprint] = File.expand_path(params[:footprint].sub(/\/$/, ""))

class Component
  include Enumerable

  Doc_struct = Struct.new(:name, :desc, :datasheet)
  Comp_struct = Struct.new(:name, :aliases, :footprint, :desc, :datasheet)

  def initialize(file)
    @comp_doc = {}
    @component = {}

    open(file + ".dcm"){|io|
      doc = nil
      io.each{|line|
        case line
        when /^\$CMP (\S+)/
          doc = Doc_struct.new($1, "", nil)
        when /^D /
          doc.desc = line.sub(/^D\s+/, "").chomp
        when /^F (http\S+)/
          doc.datasheet = $1
        when /^\$ENDCMP/
          @comp_doc[doc.name] = doc
        end
      }
    }

    open(file + ".lib"){|io|
      comp = nil
      fplist = false
      io.each{|line|
        case line
        when /^DEF (\S+)/
          if @comp_doc.has_key?($1)
            comp = Comp_struct.new($1, [], [], @comp_doc[$1].desc, @comp_doc[$1].datasheet)
          else
            comp = Comp_struct.new($1, [], [], "", nil)
          end
        when /^ALIAS/
          comp.aliases = line.split(/\s+/)[1 .. -1]
        when /^\$FPLIST/
          fplist = true
        when /^\$ENDFPLIST/
          fplist = false
        when /^ENDDEF/
          @component[comp.name] = comp
        else
          if fplist
            comp.footprint << line.strip
          end
        end
      }
    }
  end

  def keys
    @component.keys
  end

  def get(key)
    @component[key]
  end

  def has_doc?(key)
    @comp_doc.has_key?(key)
  end

  def get_doc(key)
    @comp_doc[key]
  end

  def each(&block)
    @component.values.each(&block)
  end
end

class Footprint
  def initialize(dir)
    fp_dir = File.expand_path(dir)
    if Dir.exist?(fp_dir)
      @entries = Dir.entries(fp_dir).select{|item|
        (item =~ /\.kicad_mod$/) and (item !~ /^\./)
      }
    else
      @entries = []
    end
  end

  def get(filter = nil)
    if filter
      regexp = Regexp.new("^" + filter.gsub(/\*/, ".*"))
      @entries.select{|item| item.match(regexp)}
    else
      @entries
    end
  end
end

comp = Component.new(params[:component])
fp = Footprint.new(params[:footprint])

open(Script_dir + "/table-template_1.txt"){|io|
  io.each{|line|
    print line
  }
}

print "### コンポーネントと対応するフットプリント\n"
print "\n"
print "|component|description|aliases|fp filter|footprint\n"
print "|---------|--------|-----|---------|---------\n"

comp.keys.sort{|a, b| a <=> b}.each{|key|
  item = comp.get(key)
  item_name = item.datasheet ? "[#{item.name}](#{item.datasheet})" : item.name
  aliases = []
  item.aliases.each{|item|
    if comp.has_doc?(item)
      doc = comp.get_doc(item)
      if doc.datasheet
        aliases.push("[#{item}](#{doc.datasheet})")
      else
        aliases.push(item)
      end
    else
      aliases.push(item)
    end
  }

  footprints = []
  item.footprint.each{|filter|
    footprints += fp.get(filter)
  }

  print "|#{item_name}|#{item.desc}|#{aliases.join("<br />")}|#{item.footprint.join("<br />")}|#{footprints.join("<br />")}\n"
  
}
print "\n"

footprints = fp.get()
comp.each{|item|
  item.footprint.each{|filter|
    regexp = Regexp.new("^" + filter.gsub(/\*/, ".*"))
    footprints.reject!{|fp| fp =~ regexp}
  }
}

print "### コンポーネントライブラリで参照されなかったフットプリント\n"
footprints.sort{|a,b| a <=> b}.each{|fp|
  print "* #{fp}\n"
}
print "\n"

open(Script_dir + "/table-template_2.txt"){|io|
  io.each{|line|
    print line
  }
}

