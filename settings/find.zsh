function ffind() { find . -name $1 -print }
function ffindnot() { find . ! -name $1 -print }


# Functions
#
# (f)ind by (n)ame
# usage: fn foo 
# to find all files containing 'foo' in the name
function fn() { ls **/*$1* }

