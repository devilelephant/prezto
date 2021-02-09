# Changed size here
# /Users/georgecoller/.zprezto/modules/history/init.zsh


export HISTCONTROL=erasedups
export HISTIGNORE="&:ls:ll:la:l.:pwd:exit:clear:clr:[bf]g"

bindkey '[1;2A' history-search-backward
bindkey '[1;2B' history-search-forward
