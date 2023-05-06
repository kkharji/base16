#!/bin/bash

cat "./templates/default.mustache" | \
sed "s/{{base00-hex}}/171517/g"| \
sed "s/{{base01-hex}}/1b181b/g"| \
sed "s/{{base02-hex}}/1d1b1d/g"| \
sed "s/{{base03-hex}}/383338/g"| \
sed "s/{{base04-hex}}/e7dbdb/g"| \
sed "s/{{base05-hex}}/f5f5f5/g"| \
sed "s/{{base06-hex}}/ffffff/g"| \
sed "s/{{base07-hex}}/f7f3f7/g"| \
sed "s/{{base08-hex}}/ffa600/g"| \
sed "s/{{base09-hex}}/00ff66/g"| \
sed "s/{{base0A-hex}}/20df6c/g"| \
sed "s/{{base0B-hex}}/ff0066/g"| \
sed "s/{{base0C-hex}}/6600ff/g"| \
sed "s/{{base0D-hex}}/00ffff/g"| \
sed "s/{{base0E-hex}}/007fff/g"| \
sed "s/{{base0F-hex}}/df206c/g" > "./test.vim"
