alias pms="python manage.py runserver"
alias pms0="python manage.py runserver 0.0.0.0:8000"
alias pm="python manage.py"
alias pm2="python manage.py migrate"
alias pm3="python manage.py makemigrations"

if (type grepr >/dev/null 2>&1); then
    alias grepd="grepr --django"
fi

pylib() {
    local library="${1:-django}"
    local filename=$(python -c "import $library; print($library.__file__)")
    [[ -n $filename ]] && dirname $filename
}
