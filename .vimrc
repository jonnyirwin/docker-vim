packadd minpac
call minpac#init()

let NERDTreeIgnore=['node_modules$[[dir]]', '\.git$[[dir]]']
colorscheme base16-oceanicnext
syntax on
filetype plugin on

let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = { 'javascript.jsx' : { 'extends' : 'jsx', }, }

let g:airline_theme='base16_oceanicnext'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_column_always = 1

nmap <silent> [W <Plug>(ale_first)
nmap <silent> [w <Plug>(ale_previous)
nmap <silent> ]w <Plug>(ale_next)
nmap <silent> ]W <Plug>(ale_last)

nnoremap <C-p> :<C-u>FZF<CR>
set number relativenumber
set laststatus=2
set showtabline=2
set tabstop=2
set shiftwidth=2
set expandtab
set noshowmode
set ignorecase
set hlsearch
set undodir=~/.vim/undo
command! Wq wq
command! W w

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#ternjs#timeout = 1
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#docs = 1

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
