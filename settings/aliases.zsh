# Config Files Mappings

alias v-vimrc="vim ~/.vim/vimrc"
alias v-vundles="vim ~/.vim/vundles.vim"
alias v-zshrc="vim ~/.zshrc"
alias v-zshenv="vim ~/.zshenv"
alias v-pretzo="vim ~/.zpreztorc"

# LS mappings
# a = Include directory entries whose names begin with a dot (.).
# l = List in long format.
# G = Enable colorized output.
# h = When used with the -l option, use unit suffixes: Byte, Kilobyte, Megabyte...
# p = Write a slash (`/') after each filename if that file is a directory.
# S = sort by size
alias ll=' ls -alGh'
alias ls=" ls -Gh"
## sort by size
alias lls=" ls -SalGh"

alias exit=" exit"
alias echo=" echo"
alias which=" which"
alias cd=" nocorrect cd"
alias rm=" nocorrect rm -i" # always ask if I want to delete 
alias rmfiles="find . -type f -delete -name "
alias cpwd=cpath
alias cls="clear"
alias temp=" cd $TMPDIR" 
alias pman="man -t $1 | open -f -a /Applications/Preview.app"

alias 7e='7za e'
alias 7l='7za l'
alias 7x='7za x'

# Global aliases
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
# alias -g W='| wc -l'
# alias -g H='| head'
# alias -g L="| less"
# alias -g N="| /dev/null"
# alias -g S='| sort'
# alias -g G='| grep' # now you can do: ls foo G something
# alias -g A='| ack'
alias wcl='wc -l'

alias youtube_mp3="youtube-dl -x --audio-format mp3 --prefer-ffmpeg $1"
alias youtube_wav="youtube-dl -x --audio-format wav --prefer-ffmpeg $1"
