# Find files by name using find -name
mfind() {
    local query=false
    local exclude=()
    local look_for_hidden=false

    exclude+=' -not -path "./*node_modules/*"'
    exclude+=' -not -path "./.git/*"'

    for s in $*
    do
        case $s in
            --django)
                exclude+=' -not -path "./.env/*"'
                exclude+=' -not -path "./CACHE/*"'
                ;;
            --js)
                exclude+=' -not -path "./dist/*"'
                exclude+=' -not -path "./static/*"'
                exclude+=' -not -path "./.cache/*"'
                ;;
            -e)
                look_for_extension=true
                ;;
            --swap)
                look_for_extension=true
                query='sw[a-p]'
                ;;
            *)
                if [ $query = false ] ; then
                    query="$s"
                else
                    query="$query $s"
                fi
                ;;
        esac
    done

    if [ $look_for_extension = false ]; then
        eval "find . -name \"$query*\" $exclude"
    else
        eval "find . -name \"*.$query\" $exclude"
    fi
}
