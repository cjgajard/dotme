function! Color256(str)
    let l:a=[36,6,1]
    let l:r=0
    let l:i=0
    while l:i<3
        let l:n = str2nr(a:str[i*2:i*2+1], 16)
        let l:n -= 55
        "echo "i=".l:i." n=".l:n." n/40=".((l:n < 0 ? 0 : l:n)/40.0)
        let l:r += l:a[i] * round((l:n < 0 ? 0 : l:n) / 40.0)
        "l:fr * 40 + (n ? 55 : 0)
        let l:i += 1
    endwhile

    return float2nr(l:r + 16)
endfunction
