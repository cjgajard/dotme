# Recursive grep
grepr() {
    fuzzy=false
    query=false
    params=()

    for s in $*
    do
        case $s in
            --django)
                params+="--exclude-dir=\.env"
                params+="--exclude-dir=node_modules"
                params+="--exclude-dir=bower_components"
                params+="--exclude-dir=CACHE"
                params+="--exclude=*.sql"
                params+="--exclude=*.log"
                params+="--exclude-dir=migrations"
                params+="--exclude-dir=static"
                ;;
            --js)
                params+="--exclude-dir=node_modules"
                params+="--exclude=package-lock.json"
                params+="--exclude-dir=dist"
                ;;
            --fu)
                fuzzy=true
                ;;
            -*)
                params+=$s
                ;;
            *)
                if [ $query = false ]; then
                    query="$s"
                else
                    query="$query $s"
                fi
                ;;
        esac
    done

    if [ $fuzzy != false ]; then
        query=$(echo $query | sed 's/\( \)/.*/g')
        echo $query
    fi

    if [ $query = false ]; then
        (>&2 echo 'missing search query')
        return 1
    fi
    grep $params -Inr "$query"
}
