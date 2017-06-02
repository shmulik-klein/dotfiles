call plug#begin('~/.vim/plugged')
Plug 'tomasr/molokai'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'itchyny/lightline.vim'
call plug#end()

colorscheme molokai

set number " show line numbers
set laststatus=2 
set noshowmode " for removing the redundant -- INSERT -- stats
set autowrite " this is needed for vim-go plugin to autosave before build
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" --- vim-go configuration ---
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
