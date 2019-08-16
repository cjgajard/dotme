THEME_PROMPT='\u@\h:\w\$ '

theme_prompt_addif() {
  THEME_PROMPT="${THEME_PROMPT}\$([[ -n \"$1\" ]] && echo \"$2$1$3\")"
}
