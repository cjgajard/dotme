# PROMPT

local return_color="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"

PROMPT='%{$fg_bold[cyan]%}%c$(git_prompt_info) ➜ %{$reset_color%}'
RPROMPT='%{$return_color%}%D{%R}%{$reset_color%}%{$fg[yellow]%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*%{$fg[magenta]%}"
