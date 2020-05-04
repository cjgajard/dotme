alias pmsl="python manage.py runserver"
alias pms="python manage.py runserver 0.0.0.0:8000"
alias pm="python manage.py"
alias pm2="python manage.py migrate"
alias pm3="python manage.py makemigrations"
alias pmsh="python manage.py shell"

if (type grepr >/dev/null 2>&1); then
   alias grepd="grepr --django"
fi

if (type __python_env >/dev/null 2>&1); then
    __python_env
fi
