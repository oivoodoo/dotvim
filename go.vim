au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1
let g:go_addtags_transform = "snakecase"
let g:go_fmt_command = "goimports"

au FileType go nmap <leader>gt :GoDeclsDir<cr>

au Filetype go nmap <leader>ga <Plug>(go-alternate-edit)
au Filetype go nmap <leader>gah <Plug>(go-alternate-split)
au Filetype go nmap <leader>gav <Plug>(go-alternate-vertical)

au FileType go nmap <F10> :GoTest -short<cr>
au FileType go nmap <F9> :GoCoverageToggle -short<cr>

au FileType go nmap <F12> <Plug>(go-def)

if has('nvim')
    " Enable deoplete on startup
    let g:deoplete#enable_at_startup = 1
endif

let deoplete#sources#go#gocode_binary='~/.local/share/go/bin/gocode'

let g:go_snippet_engine = "neosnippet"

