call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-scripts/DirDiff.vim'
Plug 'jdonaldson/vaxe'
Plug 'sunaku/vim-dasht'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'iCyMind/NeoSolarized'

Plug 'davidhalter/jedi-vim'

Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'git://github.com/wakatime/vim-wakatime.git'
Plug 'godlygeek/tabular'
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
  " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  " Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Plug 'zchee/deoplete-jedi'
" Plug 'villainy/deoplete-dart', { 'for': 'dart' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}

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

Plug 'neomake/neomake'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'


Plug 'elixir-editors/vim-elixir'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss'

Plug 'tpope/vim-projectionist'
Plug 'slashmili/alchemist.vim'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'c-brenn/phoenix.vim'

call plug#end()

let g:python_host_prog = expand('~/.pyenv/versions/2.7.14/envs/neovim2/bin/python')
let g:python3_host_prog = expand('~/.pyenv/versions/3.6.6/envs/neovim3/bin/python')

" let g:deoplete#enable_at_startup = 1

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
au BufRead,BufNewFile *.exs set filetype=elixir

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
 "colorscheme NeoSolarized
colorscheme dim

source ~/.config/nvim/go.vim
source ~/.config/nvim/ruby.vim

set backupdir=/tmp/
set shortmess=A

autocmd! BufWritePost * Neomake

" search related docsets
nnoremap <Leader>k :Dasht<Space>
nnoremap <Leader><Leader>k :Dasht!<Space>


" let g:lsc_server_commands = {'dart': 'dart_language_server'}
" let g:lsc_auto_map = v:true
" let g:lsc_dart_enable_completion_ml = v:false

" let g:deoplete#sources#dart#dart_sdk_path='/usr/local/Cellar/dart/2.7.1'

au BufEnter * syn match error contained "\<binding.pry\>"
au BufEnter * syn match error contained "\<binding.remote_pry\>"
au BufEnter * syn match error contained "\<binding.pry_remote\>"
au BufEnter * syn match error contained "\<byebug\>"
au BufEnter *.rb syn match error contained "\<debugger\>"

