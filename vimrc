" Standard settings
set backspace=2
set tabstop=3
set expandtab
set ruler
set shiftwidth=3
set softtabstop=3
set smartindent
set number
if has("gui_running")
   colorscheme evening
   set guifont=Lucida_Console:h9:cANSI
endif

" Fix for light background in terminals
highlight Normal ctermbg=black

" Code folding
set foldmethod=indent
set foldlevel=99
highlight Folded ctermbg=black

" Set leader key
let mapleader=","

" Map the NERD tree directory listing
map <leader>n :NERDTreeToggle<CR>

" Pydoc+Supertab completion for Python
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview
au CursorMovedI * if pumvisible() == 0|pclose|endif
au InsertLeave * if pumvisible() == 0|pclose|endif

" Load plugins
call pathogen#infect()
syntax on
filetype plugin indent on
