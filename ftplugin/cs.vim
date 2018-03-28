if exists("g:OmniSharp_running_slns") && len(g:OmniSharp_running_slns) > 0

    " Source: https://stackoverflow.com/a/25521838/79125
    nnoremap <buffer> ]m :OmniSharpNavigateDown<cr>
    nnoremap <buffer> [m :OmniSharpNavigateUp<cr>
    nnoremap <buffer> ]M :OmniSharpNavigateDown<cr>
    nnoremap <buffer> [M :OmniSharpNavigateUp<cr>

    xnoremap <buffer> ]m :OmniSharpNavigateDown<cr>
    xnoremap <buffer> [m :OmniSharpNavigateUp<cr>
    xnoremap <buffer> ]M :OmniSharpNavigateDown<cr>
    xnoremap <buffer> [M :OmniSharpNavigateUp<cr>

    onoremap <buffer> ]m :OmniSharpNavigateDown<cr>
    onoremap <buffer> [m :OmniSharpNavigateUp<cr>
    onoremap <buffer> ]M :OmniSharpNavigateDown<cr>
    onoremap <buffer> [M :OmniSharpNavigateUp<cr>

else

    call jumpmethod#plug#map_to_plug_in_buffer()

endif
