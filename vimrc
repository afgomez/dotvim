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

" Always show status line
set laststatus=2

" Don't complain when switching unsaved buffers
set hidden

" Increase history
set history=1000

" File-type highlighting and configuration.
syntax on
filetype plugin indent on

" Identation settings
set tabstop=8
set shiftwidth=2
set softtabstop=2
set expandtab

set autoindent
set smartindent

" Toggle NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" CommandT configuration
let g:CommandTMaxHeight=20

" Textmate Command-Enter
imap <D-CR> <Esc>o

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
  autocmd BufLeave,FocusLost !silent wall
endif

" For some reason this doesn't work on gvimrc
if has("gui_macvim")
  let macvim_hig_shift_movement = 1

  " Don't want entering select mode by default
  set selectmode=
endif

runtime functions.vim
