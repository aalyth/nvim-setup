call plug#begin()
	Plug 'preservim/nerdtree'	
	Plug 'sainnhe/everforest'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'bling/vim-airline'
call plug#end()

" NERDTree
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1

" Everforest
if has('termguicolors')
  set termguicolors
endif
let g:everforest_background = 'soft'
let g:everforest_better_performance = 1
colorscheme everforest

" CoC
CocInstall coc-clangd coc-css coc-docker coc-html coc-html-css-support coc-java coc-json coc-python coc-rust-analyzer coc-snippets coc-toml coc-yaml
set updatetime=300 
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<S-Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Mappings & Tabulation
tnoremap <Esc> <C-\><C-n>
set ts=4 sw=4
