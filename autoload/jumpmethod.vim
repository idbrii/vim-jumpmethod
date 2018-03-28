" Source: https://stackoverflow.com/a/6855438/79125
" TODO:
" * Extract keywords for better language support.

" Uses keywords to determine which are curly braces are for methods.
function! jumpmethod#jump(char, flags, mode)
  let original_cursor = getpos('.')

  if a:mode == 'v'
    normal! gv
  elseif a:mode == 'o'
    normal! v
  endif

  while search(a:char, a:flags) > 0
    if a:char == '}'
      " jump to the opening one to analyze the definition
      normal! %
    endif

    let current_line = line('.')

    if getline(current_line) =~ '^\s*{'
      " it's alone on the line, check the above one
      let method_line = current_line - 1
    else
      let method_line = current_line
    endif

    let method_line_body = getline(method_line)

    if method_line_body =~ '\k\+\s*(.*)' && method_line_body !~ '\<\(for\|foreach\|if\|while\|switch\|using\|catch\|get\|set\)\>'
      " it's probably a function call

      if a:char == '}'
        " we need to go back to the closing bracket
        normal! %
      endif

      echo
      return
    else
      if a:char == '}'
        " we still need to go back to the closing bracket
        normal! %
      endif
    endif
  endwhile

  " if we're here, the search has failed, restore cursor position
  echo
  call setpos('.', original_cursor)
endfunction
