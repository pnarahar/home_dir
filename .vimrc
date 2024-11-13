au BufNewFile,BufRead *.sv,*.svh,*.vh,*.v so ~/.vim/syntax/verilog_systemverilog.vim
set lines=999 columns=9999
set nu
colorscheme desert
call plug#begin('~/.vim/plugged')    " This line initializes vim-plug
" Add your plugins here, e.g., Plug 'preservim/nerdtree'
Plug 'preservim/nerdtree'
call plug#end()                      " This line finalizes vim-plug
let mapleader = ","
nmap <Leader>n :NERDTreeToggle<CR>    " Toggle NERDTree with Leader + n
nmap <Leader>f :NERDTreeFind<CR>      " Find current file in NERDTree with Leader + f
set mouse=a
