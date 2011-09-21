runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Standard stuff
set number



" Reload .vimrc after editing it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

