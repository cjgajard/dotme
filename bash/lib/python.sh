__python_env() {
    local src=${1:-".env"}/bin/activate
    [[ -f $src ]] && source $src
}

__python_lib() {
    local library="${1:-django}"
    local filename=$(python -c "import $library; print($library.__file__)")
    [[ -n $filename ]] && dirname $filename
}
