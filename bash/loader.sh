case $- in
    *i*) ;;
      *) return;;
esac

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

for i in ${library[@]}; do
    if [ -f $CARLSH/bash/lib/$i.sh ]; then
        source $CARLSH/bash/lib/$i.sh
    fi
done

plugin=(${plugin[@]} user)
for i in ${plugin[@]}; do
    if [ -f $CARLSH/bash/plugin/$i.sh ]; then
        source $CARLSH/bash/plugin/$i.sh
    fi
done
