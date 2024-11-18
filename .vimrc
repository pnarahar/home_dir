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
nnoremap <Leader>w :w<CR>           " Save with <Leader>w
nnoremap <Leader>q :q<CR>           " Quit with <Leader>q
set mouse=a
" Splits
nnoremap <leader>hs :split<Space>
nnoremap <leader>vs :vsplit<Space>
nnoremap <leader>sh :split<CR>
nnoremap <leader>sv :vsplit<CR>
nnoremap <leader>he :split<CR>:edit<Space>
nnoremap <leader>ve :vsplit<CR>:edit<Space>

" Navigation between splits
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" Resize splits
nnoremap <leader>+ :resize +5<CR>
nnoremap <leader>- :resize -5<CR>
nnoremap <leader>> :vertical resize +5<CR>
nnoremap <leader>< :vertical resize -5<CR>

" Closing splits
nnoremap <leader>q :q<CR>
nnoremap <leader>o :only<CR>
