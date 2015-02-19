function battery_charge {
    python2 $ZSH/battery.py
}

PROMPT='
%{$fg_bold[red]%}➜%{$reset_color%} %{$fg[blue]%}$(vi_mode_prompt_info)%{$reset_color%} %{$fg[yellow]%}${PWD/#$HOME/~} $(git_prompt_info)%{$reset_color%}'

RPROMPT='%{$fg[green]%}%T%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}✗%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%} "
