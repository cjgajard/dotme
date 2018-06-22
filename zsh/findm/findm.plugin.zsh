# find files by name using find -name
# Example:
#   findm --django -e html

function findm() {
    local query=false
    local exclude=()
    local look_for_hidden=false

    for s in $*
    do
        case $s in
            --django)
                exclude+="-not -path \"./.env/*\""
                exclude+='-not -path "./node_modules/*"'
                exclude+='-not -path "./base/static/bower_components/*"'
                exclude+='-not -path "./fixtures/*"'
                exclude+='-not -path "./CACHE/*"'
                ;;
            --js)
                exclude+='-not -path "./node_modules/*"'
                ;;
            -e)
                look_for_extension=true
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

function findswp() {
    findm $* -e 'sw[a-p]'
}
