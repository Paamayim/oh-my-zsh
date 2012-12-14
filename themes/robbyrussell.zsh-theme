TMOUT=45

TRAPALRM () {
   zle reset-prompt
}

function battery_charge {
    python2 $ZSH/battery.py
}


PROMPT='
%{$fg_bold[red]%}➜ %{$fg_bold[green]%}%p%{$reset_color%} %{$fg[magenta]%}%n%{$reset_color%} %{$fg[blue]%}in %{$fg[yellow]%}${PWD/#$HOME/~} %{$fg[blue]%}$(git_prompt_info)%{$reset_color%}'

RPROMPT='$(battery_charge)'

ZSH_THEME_GIT_PROMPT_PREFIX="on %{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} "
