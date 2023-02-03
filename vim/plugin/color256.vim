" Returns the brightness of a hex color
function! ColorBrightness(raw_color) abort
  let l:color = trim(a:raw_color, '#')
  let l:red = str2nr(substitute(l:color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:color, '.{4}(.{2})', '1', 'g'), 16)
  return ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000
endfunction

function! s:ColorSplitHex(str)
    let l:a=[]
    let l:i=0
    while l:i<3
        let l:a = add(l:a, str2nr(a:str[i*2:i*2+1], 16))
        let l:i += 1
    endwhile
    return l:a
endfunction

function! Color256(str)
    let l:c=s:ColorSplitHex(a:str)
    let l:a=[36,6,1]
    let l:r=0
    let l:i=0
    while l:i<3
        let l:n = l:c[i]
        let l:n -= 55
        let l:r += l:a[i] * round((l:n < 0 ? 0 : l:n) / 40.0)
        let l:i += 1
    endwhile
    return float2nr(l:r + 16)
endfunction

function! s:Color256Cmd()
    let l:c=Color256(expand('<cword>'))
    exe 'normal T#v6lohc'.l:c
endfunction

function! ColorRgb(str)
    let l:c=s:ColorSplitHex(a:str)
    return 'rgb('.l:c[0].','.l:c[1].','.l:c[2].')'
endfunction

function! s:ColorRgbCmd()
    let l:rgb=ColorRgb(expand('<cword>'))
    exe 'normal viwohc'.l:rgb
endfunction

command! ColorRgb call s:ColorRgbCmd()
command! Color256 call s:Color256Cmd()
