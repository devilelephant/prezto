# Temp commands changed often
#
export CLARIO_HOME=~/Downloads/data

alias s3copyexample='aws s3 cp s3://dev-clario/10450/projects/workbench/8909/data s3://qa-clario/5023/projects/workbench/255/data --dryrun --recursive'
alias s3preprod='aws s3'
function s3prod { s3cmd --config ~/.s3cfg_prod --force $1 s3://prod-clario/$2 $3 $4 }

function sshclario { ssh clario@$1 }

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

function cleantemp {
    rm -fr $CLARIO_HOME/temp/*
}

export ANT_OPTS="-Xmx768m -XX:MaxPermSize=256m"
