" Source: https://stackoverflow.com/a/6855438/79125

function! jumpmethod#plug#setup_plug()
    nnoremap <Plug>(jumpmethod-curly-tostart-fwd)  :<c-u>call jumpmethod#jump('{', 'W',  'n')<cr>
    nnoremap <Plug>(jumpmethod-curly-tostart-back) :<c-u>call jumpmethod#jump('{', 'Wb', 'n')<cr>
    nnoremap <Plug>(jumpmethod-curly-toend-fwd)    :<c-u>call jumpmethod#jump('}', 'W',  'n')<cr>
    nnoremap <Plug>(jumpmethod-curly-toend-back)   :<c-u>call jumpmethod#jump('}', 'Wb', 'n')<cr>

    xnoremap <Plug>(jumpmethod-curly-tostart-fwd)  :<c-u>call jumpmethod#jump('{', 'W',  'v')<cr>
    xnoremap <Plug>(jumpmethod-curly-tostart-back) :<c-u>call jumpmethod#jump('{', 'Wb', 'v')<cr>
    xnoremap <Plug>(jumpmethod-curly-toend-fwd)    :<c-u>call jumpmethod#jump('}', 'W',  'v')<cr>
    xnoremap <Plug>(jumpmethod-curly-toend-back)   :<c-u>call jumpmethod#jump('}', 'Wb', 'v')<cr>

    onoremap <Plug>(jumpmethod-curly-tostart-fwd)  :<c-u>call jumpmethod#jump('{', 'W',  'o')<cr>
    onoremap <Plug>(jumpmethod-curly-tostart-back) :<c-u>call jumpmethod#jump('{', 'Wb', 'o')<cr>
    onoremap <Plug>(jumpmethod-curly-toend-fwd)    :<c-u>call jumpmethod#jump('}', 'W',  'o')<cr>
    onoremap <Plug>(jumpmethod-curly-toend-back)   :<c-u>call jumpmethod#jump('}', 'Wb', 'o')<cr>

    let s:setup_plug = 1
endf

function! jumpmethod#plug#map_to_plug_in_buffer()
    if !exists("s:setup_plug") || s:setup_plug == 0
        call jumpmethod#plug#setup_plug()
    endif

    nmap <buffer> ]m <Plug>(jumpmethod-curly-tostart-fwd)
    nmap <buffer> [m <Plug>(jumpmethod-curly-tostart-back)
    nmap <buffer> ]M <Plug>(jumpmethod-curly-toend-fwd)
    nmap <buffer> [M <Plug>(jumpmethod-curly-toend-back)

    xmap <buffer> ]m <Plug>(jumpmethod-curly-tostart-fwd)
    xmap <buffer> [m <Plug>(jumpmethod-curly-tostart-back)
    xmap <buffer> ]M <Plug>(jumpmethod-curly-toend-fwd)
    xmap <buffer> [M <Plug>(jumpmethod-curly-toend-back)

    omap <buffer> ]m <Plug>(jumpmethod-curly-tostart-fwd)
    omap <buffer> [m <Plug>(jumpmethod-curly-tostart-back)
    omap <buffer> ]M <Plug>(jumpmethod-curly-toend-fwd)
    omap <buffer> [M <Plug>(jumpmethod-curly-toend-back)
endf
