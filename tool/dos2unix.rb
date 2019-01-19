#!/usr/bin/ruby

code = nil

file = ARGV[0]
if file
  io = open(file)
else
  io = STDIN
end

io.each{|line|
  unless code
    if line.match(/\r\n$/)
      code = :windows
    else
      code = :unix
    end
  end

  if code == :windows
    line.force_encoding("cp932")
    line.encode!("utf-8")
    line.sub!(/\r\n$/, "\n")
  end

  print line
}
