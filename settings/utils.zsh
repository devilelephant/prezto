# Temp commands changed often

# Gunzip a file if it exists and is in gzip format.  Handles files with or without .gz extension 
function gu {
  if [[ -a $1 ]]; then
    if [[ -n $(file -kIb $1 | grep gzip) ]]; then  
      if [[ -z $(echo $1 | grep gz) ]]; then
         mv $1 $1.gz
      fi
      gunzip $1 
    else  
      echo "File '$1' not gzip compressed"
    fi
  else
    echo "File '$1' not found"
  fi
} 

export ANT_OPTS="-Xmx768m -XX:MaxPermSize=256m"
