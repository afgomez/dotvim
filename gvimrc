" GUI stuff
if has("gui_running")
  set guioptions-=T
  set guifont=Consolas:h12
  color cobalt
  set cursorline

  " Show hidden characters
  set list
  set listchars=tab:▸\ ,eol:¬ " Textmate invisible characters


endif

if has("gui_macvim")

  let macvim_hig_shift_movement = 1
  
   " Fullscreen
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
  
  map <D-F> :Ack<Space>
  imap <D-F> <Esc>:Ack<Space>

    " Map Command-# to switch tabs
  map <D-0> 0gt
  imap <D-0> <Esc>0gt
  map <D-1> 1gt
  imap <D-1> <Esc>1gt
  map <D-2> 2gt
  imap <D-2> <Esc>2gt
  map <D-3> 3gt
  imap <D-3> <Esc>3gt
  map <D-4> 4gt
  imap <D-4> <Esc>4gt
  map <D-5> 5gt
  imap <D-5> <Esc>5gt
  map <D-6> 6gt
  imap <D-6> <Esc>6gt
  map <D-7> 7gt
  imap <D-7> <Esc>7gt
  map <D-8> 8gt
  imap <D-8> <Esc>8gt
  map <D-9> 9gt
  imap <D-9> <Esc>9gt
endif

