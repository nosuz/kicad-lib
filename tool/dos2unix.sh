#!/bin/bash

for f in *.lib *.dcm module.pretty/*.kicad_mod;
do
    ruby ./tool/dos2unix.rb $f > /tmp/kicad.txt
    mv /tmp/kicad.txt $f
done
