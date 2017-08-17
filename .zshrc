alias ll="ls -la"
alias d="docker"
alias dm="docker-machine"
alias ds="docker-swarm"
alias dco="docker-compose"

# changes hex 0x15 to delete everything to the left of the cursor,
# rather than the whole line
bindkey "^U" backward-kill-line

# binds hex 0x18 0x7f with deleting everything to the left of the cursor
bindkey "^X\\x7f" backward-kill-line

# adds redo
bindkey "^X^_" redo
