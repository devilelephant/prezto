function cpath() {
    echo -n `pwd` | pbcopy
}


function pfs() {
  osascript 2>/dev/null <<EOF
    set output to ""
    tell application "Finder" to set the_selection to selection
    set item_count to count the_selection
    repeat with item_index from 1 to count the_selection
      if item_index is less than item_count then set the_delimiter to "\n"
      if item_index is item_count then set the_delimiter to ""
      set output to output & ((item item_index of the_selection as alias)'s POSIX path) & the_delimiter
    end repeat
EOF
}

function fdc() {

    if [ -n "$1" ]; then
        if [ "${1%%/*}" = "" ]; then
            thePath="$1"
        else
            thePath=`pwd`"/$1"
        fi
    else
        thePath=`pwd`
    fi

    osascript 2>/dev/null <<END
    set myPath to ( POSIX file "$thePath" as alias )
    try
        tell application "Finder" to set the (folder of the front window) to myPath
    on error -- no open folder windows
        tell application "Finder" to open myPath
    end try
END

    thePath=
}

