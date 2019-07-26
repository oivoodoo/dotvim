let g:python_host_prog = '~/.pyenv/versions/2.7.14/envs/neovim2/bin/python'
let g:python3_host_prog = '~/.pyenv/versions/3.6.6/envs/neovim3/bin/python'

call plug#begin('~/.local/share/nvim/plugged')

Plug 'iCyMind/NeoSolarized'

Plug 'davidhalter/jedi-vim'

Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-haml'
Plug 'janko/vim-test'

Plug 'lifepillar/pgsql.vim'
Plug 'ntpeters/vim-better-whitespace'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'zchee/deoplete-jedi'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/indentLine'

Plug 'slashmili/alchemist.vim'

Plug 'sbdchd/neoformat'

Plug 'posva/vim-vue'
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/tsuquyomi-vue'
Plug 'posva/vim-vue'

call plug#end()

let g:deoplete#enable_at_startup = 1

let mapleader = "\<Space>" 

nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <silent> <leader>a :Ack 
" switch between buffers
nnoremap <leader>bb :buffers<cr>:b<space> 
nnoremap <leader><tab> :b#<cr>

set nonumber
set hlsearch
set ruler

syntax on

set hidden
set confirm
set autowriteall
set wildmenu wildmode=full

set splitright
set splitbelow
set expandtab

set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" Use Ag (the silver searcher) instack of Ack
let g:ackprg = 'ag --nogroup --nocolor --column'

set clipboard=unnamed

au BufRead,BufNewFile *.hql set filetype=sql
au BufRead,BufNewFile *.hql.j2 set filetype=sql
au BufRead,BufNewFile Dockerfile.build set filetype=Dockerfile
au BufRead,BufNewFile Dockerfile.release set filetype=Dockerfile
au BufRead,BufNewFile *.vue set filetype=vue
au BufRead,BufNewFile *.yml.env set filetype=yaml
au BufRead,BufNewFile *.yml.test set filetype=yaml

set sw=4
set ts=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd Filetype sql set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype yml set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype yaml set expandtab softtabstop=2 sw=2 ts=2

let g:strip_whitespace_on_save = 1
let g:sql_type_default = 'pgsql'

nnoremap <silent> <leader>t :TestFile<cr>

nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

nmap <silent> ,, :Commentary<CR>

set termguicolors
set background=light
colorscheme NeoSolarized

source ~/.config/nvim/go.vim
source ~/.config/nvim/ruby.vim
