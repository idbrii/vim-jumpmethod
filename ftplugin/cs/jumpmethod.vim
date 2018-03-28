" Source: https://stackoverflow.com/a/6855438/79125
" TODO:
" * Extract keywords
" * setup ftplugin for c#, java, C++?
" * Use Plug

nnoremap <buffer> ]m :<c-u>call jumpmethod#jump('{', 'W',  'n')<cr>
nnoremap <buffer> [m :<c-u>call jumpmethod#jump('{', 'Wb', 'n')<cr>
nnoremap <buffer> ]M :<c-u>call jumpmethod#jump('}', 'W',  'n')<cr>
nnoremap <buffer> [M :<c-u>call jumpmethod#jump('}', 'Wb', 'n')<cr>

xnoremap <buffer> ]m :<c-u>call jumpmethod#jump('{', 'W',  'v')<cr>
xnoremap <buffer> [m :<c-u>call jumpmethod#jump('{', 'Wb', 'v')<cr>
xnoremap <buffer> ]M :<c-u>call jumpmethod#jump('}', 'W',  'v')<cr>
xnoremap <buffer> [M :<c-u>call jumpmethod#jump('}', 'Wb', 'v')<cr>

onoremap <buffer> ]m :<c-u>call jumpmethod#jump('{', 'W',  'o')<cr>
onoremap <buffer> [m :<c-u>call jumpmethod#jump('{', 'Wb', 'o')<cr>
onoremap <buffer> ]M :<c-u>call jumpmethod#jump('}', 'W',  'o')<cr>
onoremap <buffer> [M :<c-u>call jumpmethod#jump('}', 'Wb', 'o')<cr>

