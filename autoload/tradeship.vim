function! tradeship#Import() abort
  let view = winsaveview()
  let dir = expand('%:p:h')
  let out = system('tradeship -s ' . shellescape(dir) . ' 2>&1', getline(1, '$'))

  if v:shell_error == 0
    silent %delete
    call setline(1, split(out, '\v\n'))
  else
    echo 'tradeship: ' . out
  endif

  call winrestview(view)
endfunction
