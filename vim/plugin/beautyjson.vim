function! BeautyJSON()
    exec '%s/\({\|,\)/\0
    exec '%s/}/
    normal mbgg=G'b
endfunction