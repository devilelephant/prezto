DIRSTACKSIZE=9
DIRSTACKFILE=~/.zdirs

if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1] && cd $OLDPWD
fi

# Saving of DIRSTACKFILE has been moved to ~/.zlogout
#chpwd() {
#  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
#}

alias cdb=" cd -" # Toggle between two directories

# Add space before to keep these out of history
alias cd=" cd"
alias ls=" ls"
