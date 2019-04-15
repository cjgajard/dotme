r="\[\e[00m\]"
a="\[\e[00;36m\]"
b="\[\e[00;33m\]"

# Format for git_prompt_status()
THEME_GIT_PROMPT_UNMERGED="w"
THEME_GIT_PROMPT_DELETED="d"
THEME_GIT_PROMPT_RENAMED="r"
THEME_GIT_PROMPT_MODIFIED="m"
THEME_GIT_PROMPT_ADDED="a"
THEME_GIT_PROMPT_UNTRACKED="u"

THEME_PROMPT="${a}\\W${r}"
theme_prompt_addif '$(git_prompt_info)' " $b" $r
theme_prompt_addif '$(git_prompt_status)' "$b($r$a" "$b)$r"
THEME_PROMPT="$THEME_PROMPT\\$ "
