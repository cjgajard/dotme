function! BeautyJSON()
    exec '%s/\({\|,\)/\0/g'
    exec '%s/}/}/g'
    normal mbgg=G'b
endfunction
