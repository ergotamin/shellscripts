#!/bin/bash
function msg()
{
  echo -e "  "${1}
  echo -e "     |"
  echo -e "     '--> { "${2}" }"
}
var=def
def=999
echo "-----(setting two new variables)-----"
msg "var" "def"
msg "def" "999"
echo "-----(1. direct-reference of variables)-----"
msg "\$var" $var
msg "\$def" "999"
echo "-----(1. dereferenced-reference for 'var')-----"
msg "\`eval 'expr \$'\$var\` (same as \`eval echo \\$\$var\`)" `eval 'expr $'$var`
echo "-----(adding a new variable')-----"
ref=333
msg "ref" "333"
echo "-----(assign 'def' the value of 'ref')-----"
def=$ref
msg "def" "\$ref"
echo "-----(2. direct referenced of variables)-----"
msg "\$var" $var
msg "\$def" $def
echo "-----(2. dereferenced-reference for 'var')-----"
msg "\`eval 'expr \$'\$var\` (same as \`eval echo \\$\$var\`)" `eval 'expr $'$var`
echo "-----(better method of dereferenced-reference for 'var')-----"
msg "\${!var}" ${!var}
