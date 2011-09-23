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
  
   " Fullscreen
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>
  set fuoptions=maxvert,maxhorz
  au GUIEnter * set fullscreen
  
  " Command-T ala Textmate
  macmenu &File.New\ Tab key=<D-T>
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

