" Standard settings
set backspace=2
set ruler
set number
set tw=0
if has("gui_running")
   colorscheme evening
   set guifont=Lucida_Console:h9:cANSI
endif

" Regex without so many backslashes
nnoremap / /\v
vnoremap / /\v

" Highlighting search results
set incsearch
set showmatch
set hlsearch

" Fix for light background in terminals
highlight Normal ctermbg=black

" Code folding
set foldmethod=indent
set foldlevel=99
highlight Folded ctermbg=black

" Center after jumping
nnoremap N Nzz
nnoremap n nzz
nnoremap } }zz
nnoremap { {zz

" Scroll with more intuitive keys
set <M-j>=j
set <M-k>=k
nnoremap <M-j> <C-e>
nnoremap <M-k> <C-y>
set scrolloff=5

" Set leader key
let mapleader=","

" Map the NERD tree directory listing
map <leader>n :NERDTreeToggle<CR>

" Disable highlighting temporarily
map <leader>m :noh<CR>

" Load plugins
call pathogen#infect()
syntax on
filetype plugin indent on

" Configure detectindent
if exists(':DetectIndent')
   let g:detectindent_preferred_indent=4
   let g:detectindent_preferred_expandtab=1
   autocmd BufEnter * DetectIndent
else
   set shiftwidth=4
   set softtabstop=4
   set tabstop=4
   set expandtab
endif

let g:ctrlp_show_hidden = 1
let g:ctrlp_use_caching = 0
let g:ctrlp_custom_ignore = 'node_modules\|\.mypy_cache\|\.git\|\.pytest_cache\|\.hypothesis\|\.ipython|*\.swp|*\.pyc|*\.gz$'
