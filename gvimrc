" GUI stuff
if has("gui_running")
  set guioptions-=T
  set guifont=LiberationMono:h12
  color cobalt
  set cursorline

  " Show hidden characters
  set list
  set listchars=tab:▸\ ,eol:¬ " Textmate invisible characters


endif

if has("gui_macvim")

  let macvim_hig_shift_movement = 1
  
  " Command-T ala Textmate
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>
  
  " Fast buffer switch with Command-T
  macmenu &Tools.Make key=<nop>
  map <D-b> :CommandTBuffer<CR>
  imap <D-b> <Esc>:CommandTBuffer<CR>
  
  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i



endif

