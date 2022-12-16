call plug#begin('~/.local/share/nvim/plugged')

Plug 'tikhomirov/vim-glsl'
Plug 'vim-crystal/vim-crystal'
Plug 'vim-scripts/DirDiff.vim'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'iCyMind/NeoSolarized'

Plug 'dart-lang/dart-vim-plugin'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'NoahTheDuke/vim-just'

Plug 'godlygeek/tabular'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dadbod'
Plug 'tpope/vim-eunuch'
Plug 'janko/vim-test'
Plug 'jdonaldson/vaxe'
Plug 'ziglang/zig.vim'

Plug 'lifepillar/pgsql.vim'
Plug 'ntpeters/vim-better-whitespace'

if has('nvim')
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.local/share/nvim/plugged/gocode/nvim/symlink.sh' }

Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'mileszs/ack.vim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/indentLine'

Plug 'sbdchd/neoformat'

Plug 'Quramy/tsuquyomi'
Plug 'Quramy/tsuquyomi-vue'
Plug 'posva/vim-vue'

Plug 'neomake/neomake'
Plug 'neovim/nvim-lspconfig'

Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/denite.nvim'

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'peitalin/vim-jsx-typescript'
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'mxw/vim-jsx'
Plug 'jparise/vim-graphql'        " GraphQL syntax


Plug 'elixir-editors/vim-elixir'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/coc-tailwindcss'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
Plug 'mhinz/vim-mix-format'

Plug 'tpope/vim-projectionist'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'c-brenn/phoenix.vim'

call plug#end()

let g:python_host_prog = expand('~/.pyenv/shims/python2')
let g:python3_host_prog = expand('~/.asdf/shims/python3')


let mapleader = "\<Space>"

nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <silent> <leader>a :Ack 
nnoremap <silent> <leader>et :TestFile<cr>
nnoremap <silent> <leader>ef :MixFormat<cr>

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
let g:ackprg = 'ag --nogroup --nocolor --column --ignore-dir priv/static --ignore-dir deps --ignore-dir _build --ignore-dir .git --ignore-dir tmp --ignore-dir phx.gen.html'

set clipboard=unnamed

au BufRead,BufNewFile *.hql set filetype=sql
au BufRead,BufNewFile *.hql.j2 set filetype=sql
au BufRead,BufNewFile Dockerfile.build set filetype=Dockerfile
au BufRead,BufNewFile Dockerfile.release set filetype=Dockerfile
au BufRead,BufNewFile *.vue set filetype=vue
au BufRead,BufNewFile *.yml.env set filetype=yaml
au BufRead,BufNewFile *.yml.test set filetype=yaml
au BufRead,BufNewFile *.exs set filetype=elixir
au BufRead,BufNewFile *.script set filetype=lua
au BufRead,BufNewFile *.gui_script set filetype=lua
au BufNewFile,BufRead *.script\|*.gui_script\|*.render_script\|*.editor_script\|*.lua_  setlocal filetype=lua
au BufNewFile,BufRead *.vsh\|*.fsh\|*.fp\|*.vp setlocal filetype=glsl
au BufRead,BufNewFile *.script.ts set filetype=typescript
au BufRead,BufNewFile *.gui_script.ts set filetype=typescript
au BufRead,BufNewFile *.ts set filetype=typescript
au BufRead,BufNewFile *.tsx set filetype=typescript.tsx

set sw=4
set ts=4
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd Filetype sql set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype yml set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype yaml set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype ts set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype tsx set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype typescript set expandtab softtabstop=2 sw=2 ts=2
autocmd Filetype typescript.tsx set expandtab softtabstop=2 sw=2 ts=2

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

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



" let g:lsc_server_commands = {'dart': 'dart_language_server'}
" let g:lsc_auto_map = v:true
" let g:lsc_dart_enable_completion_ml = v:false

au BufEnter * syn match error contained "\<binding.pry\>"
au BufEnter * syn match error contained "\<binding.remote_pry\>"
au BufEnter * syn match error contained "\<binding.pry_remote\>"
au BufEnter * syn match error contained "\<byebug\>"
au BufEnter *.rb syn match error contained "\<debugger\>"

autocmd BufWritePre *.ts Neoformat prettier
autocmd BufWritePre *.tsx Neoformat prettier
autocmd BufWritePre *.script.ts Neoformat prettier
autocmd BufWritePre *.gui_script.ts Neoformat prettier

let g:coc_global_extensions = ['coc-tsserver', 'coc-elixir', 'coc-pyright', 'coc-react-refactor', 'coc-clangd', 'coc-haxe', 'coc-zig', 'coc-lua', 'coc-defold-ide', 'coc-git', 'coc-rls']

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

nnoremap <leader>n NnnExplorer<CR>
vnoremap <leader>r NnnExplorer %:p:h<CR>

nnoremap <space>h :CocCommand defold-ide.refactorHash<CR>
vnoremap <space>h :CocCommand defold-ide.refactorHashVisual<CR>

let g:jedi#completions_enabled = 0

" let g:mix_format_on_save = 1

set shortmess=a

let g:coc_node_path = '~/.asdf/shims/node'
let g:node_host_prog = '~/.asdf/shims/node'


colorscheme lunar


map <leader>r :NERDTreeFind<cr>

let g:neoformat_try_node_exe = 1

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

set shortmess=a

let g:neoformat_only_msg_on_error = 1
