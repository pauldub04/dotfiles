syntax on
set relativenumber
set tabstop=4
set shiftwidth=4
set expandtab
set number
set clipboard=unnamedplus
set autoindent
set smartindent

inoremap {<CR> {<CR>}<Esc>ko

" ctrl+t for new tab
nmap <C-t> :tabnew<CR>
" ctrl+n to switch tabs
nmap <C-n> :tabn<CR>

call plug#begin()
Plug 'tomasiser/vim-code-dark'
Plug 'christoomey/vim-tmux-navigator'
call plug#end()

colorscheme codedark
