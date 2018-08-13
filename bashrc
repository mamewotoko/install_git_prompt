. ~/.git-prompt.sh
. ~/.git-completion.bash

__prompt_command(){
  local EXIT="$?"

    local RCol='\[\e[0m\]'

    local Red='\[\e[0;31m\]'
    local Gre='\[\e[0;32m\]'
    local BYel='\[\e[1;33m\]'
    local BBlu='\[\e[1;34m\]'
    local Pur='\[\e[0;35m\]'
    if [ $EXIT != 0 ]; then
        PS1="${Red}[$EXIT]:\u${RCol}"      # Add red if exit code non 0
    else
        PS1="${Gre}[$EXIT]:\u${RCol}"
    fi

    PS1+='@\h:\[\033[1;34m\]\w\[\033[1;31m\]$(__git_ps1)\[\033[00m\]\n\t\$ '
}
PROMPT_COMMAND=__prompt_command
