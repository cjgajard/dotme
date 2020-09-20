let s:storage = {}

function! linksave#find()
    let s:storage = {}
    redir => listing
    try
        silent highlight
    finally
        redir END
    endtry
    for line in filter(split(listing, '\n'), "v:val =~ 'xxx links to'")
        let l:tokens = split(line)
        let s:storage[tokens[0]] = tokens[4]
    endfor
endfunction

function! linksave#restore()
    redir => listing
    try
        silent highlight
    finally
        redir END
    endtry
    for line in filter(split(listing, '\n'), "v:val =~ 'cleared'")
        let l:tokens = split(line)
        let l:from = tokens[0]
        let l:to = get(s:storage, l:from, '')
        if empty(l:to) | continue | endif
        execute 'hi link' l:from l:to
    endfor
    let s:storage = {}
endfunction
