function jar-unzip {
   makedir $2
   unzip $1 -d $2
   export JAR_UNZIP_DIR=$2
   echo ""
   echo "\e[1;1m\e[0;34m$1 unzipped to \$JAR_UNZIP_DIR\e[0m"
}

function jar-unzip-temp {
   tmpdir="${TMPDIR}jar-$RANDOM"
   echo "balls: $tmpdir"
   jar-unzip $1 $tmpdir
}

function jar-list {
  unzip -l $1
}

function jar-cat {
  echo "\e[1;1m\e[0;34mUsage: jar-cat file [file|'filewildcard' ...]\e[0m"
  echo ""
  unzip -ca $1 $2 $3 $4 $5
}
