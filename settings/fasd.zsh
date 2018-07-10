#
# only init if installed.
fasd_cache="$HOME/.fasd-init-bash"
if [ "$(command -v fasd)" -nt "$fasd_cache" -o ! -s "$fasd_cache" ]; then
  eval "$(fasd --init posix-alias zsh-hook zsh-ccomp zsh-ccomp-install zsh-wcomp zsh-wcomp-install)" >| "$fasd_cache"
fi
source "$fasd_cache"
unset fasd_cache


# jump to recently used items
alias a=' fasd -a' # any
alias s=' fasd -si' # show / search / select
alias d=' fasd -d' # directory
alias f=' fasd -f' # file
alias z=' fasd_cd -d' # cd, same functionality as j in autojump
alias zz=' fasd_cd -d -i' # interactive directory jump

alias vz='z -e mvim'
alias vzz='zz -e mvim'
alias va='a -e mvim'
alias vs='a -e mvim'
alias vd='d -e mvim'
alias vf='f -e mvim'

alias o='a -e open'
