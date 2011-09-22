runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Standard stuff
set number
set hidden " Manage buffers more efficiently
set history=1000
set list
set cursorline

colorscheme cobalt

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

" Remove toolbar
if has("gui_running")
  set guioptions-=T
endif 

" Reload .vimrc after editing it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif





" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
