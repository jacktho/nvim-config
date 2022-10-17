lua require('plugins')

" Plugin lua settings
lua require('settings-jack')

set clipboard+=unnamedplus
set mouse=a

" Load the colorscheme
colorscheme github_dark_default

" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

" Clear
nnoremap <Leader><Space> :noh<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Find files using Telescope command-line sugar.
nnoremap <C-P> <cmd>Telescope find_files<cr>
nnoremap <leader>ff <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)  
nmap <silent> gy <Plug>(coc-type-definition)  
nmap <silent> gi <Plug>(coc-implementation)  
nmap <silent> gr <Plug>(coc-references)  

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif 


" Use <CR> to confirm completion, use: >
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make leader + x convert to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)
let g:coc_snippet_next = '<tab>'

filetype plugin on
syntax on
set number
set tabstop=2
set shiftwidth=2
set expandtab
set termguicolors
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175


if has('persistent_undo')      "check if your vim version supports it
  set undofile                 "turn on the feature  
  set undodir=$HOME/.config/nvim/undo
endif
