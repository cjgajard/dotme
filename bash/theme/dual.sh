r="\e[0m"
a="\e[00;34m"
b="\e[01;34m"
# tf="%(?:$b:$a)"

# Format for git_prompt_info()
THEME_GIT_PROMPT_PREFIX=" $b"
THEME_GIT_PROMPT_SUFFIX="$r"

# Format for git_prompt_status()
THEME_GIT_PROMPT_UNMERGED="w"
THEME_GIT_PROMPT_DELETED="d"
THEME_GIT_PROMPT_RENAMED="r"
THEME_GIT_PROMPT_MODIFIED="m"
THEME_GIT_PROMPT_ADDED="a"
THEME_GIT_PROMPT_UNTRACKED="u"

THEME_GIT_STATUS_PREFIX="$b($r$a"
THEME_GIT_STATUS_SUFFIX="$r$b)$r"

THEME_PROMPT="\[$a\]\\W\[$r\]"
THEME_PROMPT="$THEME_PROMPT\$(echo -e \"\[\$(git_prompt_info)\]\")"
THEME_PROMPT="$THEME_PROMPT\$(echo -e \"\[\$(git_prompt_status)\]\")"
THEME_PROMPT="$THEME_PROMPT\\$ "
