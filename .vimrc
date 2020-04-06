" Global configuration
set number
syntax on
set cursorline          " highlight current line
set wildmenu 	        " visual autocomplete for command menu

" Tabs
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" Searching
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
noremap <leader><space> :nohlsearch<CR>

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level

" space open/closes folds
noremap <space> za

" Tab navigation like Firefox.
noremap <C-h> :tabprevious<CR>
noremap <C-l>   :tabnext<CR>
noremap <C-t>     :tabnew<CR>

