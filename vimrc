runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Disable vi compatibility
set nocompatible

" Change leader key to comma
let mapleader=","

" Show a list of possible completions in Ex mode
set wildmenu
set wildmode=longest:full

" Show line numbers
set number

" Show line/column in status bar
set ruler

" Higher command line
set cmdheight=2

" Always show status line
set laststatus=2

" Allow backspacing over everything
set backspace=indent,eol,start

" re-read a file if it has a different timestamp
set autoread

" Don't complain when switching unsaved buffers
set hidden

" Increase history
set history=1000

" File-type highlighting and configuration.
syntax on
filetype plugin indent on

" Identation settings
set tabstop=8 shiftwidth=2 softtabstop=2 expandtab

set autoindent
set smartindent

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" edit a file in the same path of the current file (copied from Janus)
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" CommandT configuration
let g:CommandTMaxHeight=20

" Textmate Command-Enter
imap <D-CR> <Esc>o

" Textmate duplicate line
map <C-D> yyp
imap <C-D> <Esc>yypi

" Highlight search terms...
set hlsearch
set incsearch " ...dynamically as they are typed.

" case-insensitive searches
set ignorecase 
set smartcase

" Keep some lines before/after the cursor when scrolling
set scrolloff=5

if has("autocmd")
  " Save files when focus is lost
  autocmd BufLeave,FocusLost * silent! wall
  
  " - is a valid identifier in CSS/HTML
  autocmd BufRead css,html setlocal isk+=-

  " Fixes syntax problems caused by ragtag
  autocmd BufRead css setlocal isk-=:
endif

" For some reason this doesn't work on gvimrc
if has("gui_macvim")
  let macvim_hig_shift_movement = 1
endif

" Don't include the character under the cursor in selection (like all other
" editors in the world
set selection=exclusive

runtime functions.vim
