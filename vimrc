runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Change leader key to comma
let mapleader = ","

" Standard stuff
set number
set hidden " Manage buffers more efficiently
set history=1000
set list

" File-type highlighting and configuration.
" Run :filetype (without args) to see what you may have
" to turn on yourself, or just set them all to be sure.
syntax on
filetype on
filetype plugin on
filetype indent on

" Identation settings
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

set autoindent
set smartindent

" Textmate invisible characters
set listchars=tab:▸\ ,eol:¬


" CommandT configuration
let g:CommandTMaxHeight=20


" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.


" Autocompletion
set wildmode=longest:full
set wildmenu

" case-insensitive searches
set ignorecase 
set smartcase

" Keep some lines before/after the cursor when scrolling
set scrolloff=3

" GUI stuff
if has("gui_running")
  set guioptions-=T
  set guifont=Consolas:h12
  color cobalt
  set cursorline
endif 

if has("autocmd")
  " Save files when focus is lost
  autocmd BufLeave,FocusLost !silent wall
endif

" Macvim Stuff
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
  
  " Command-Shift-F for Ack
  map <D-F> :Ack<space>

  " Command-/ to toggle comments
  map <D-/> <plug>NERDCommenterToggle<CR>
  imap <D-/> <Esc><plug>NERDCommenterToggle<CR>i

  " Command-T for CommandT
  macmenu &File.New\ Tab key=<D-T>
  map <D-t> :CommandT<CR>
  imap <D-t> <Esc>:CommandT<CR>




endif

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
