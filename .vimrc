" Global configuration
set relativenumber
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

" Tab navigation.
noremap <C-h> :tabprevious<CR>
noremap <C-l> :tabnext<CR>
noremap <C-t> :tabnew<CR>
   
call plug#begin("~/.vim/plugged")
  Plug 'suan/vim-instant-markdown', {'for':'markdown'}  "Display markdown automatically, need to install the miniserver
  Plug 'tomasr/molokai'

  " Status line
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes' 

  Plug 'ap/vim-css-color'
  "" Language Client
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  "let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
  "" TypeScript Highlighting
  "Plug 'leafgarland/typescript-vim'
  "Plug 'peitalin/vim-jsx-typescript'


  " File Explorer with Icons
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'

  "" File Search
  "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  "Plug 'junegunn/fzf.vim'

  "" Git extension
  Plug 'airblade/vim-gitgutter', {'on': 'GitGutterEnable'}

  "" Markdown
  "Plug 'godlygeek/tabular'
  "Plug 'plasticboy/vim-markdown'

call plug#end()

" Molokai configuration
   colors molokai
   let g:molokai_original = 1
 
" NERDTree configuration
   let g:NERDTreeShowHidden = 1
   let g:NERDTreeMinimalUI = 1
   let g:NERDTreeIgnore = []
   let g:NERDTreeStatusline = ''
   
   " Automaticaly close nvim if NERDTree is only thing left open
   autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
   
   nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""
" Instant Markdown
" """""""""""""""""""""""""""""""""""""""""""""
let g:instant_markdown_autostart = 0         " Turns off auto preview 
let g:instant_markdown_browser = "surf"   " Uses surf for preview 
map <Leader>md :InstantMarkdownPreview<CR>   " Previews .md file 
map <Leader>ms :InstantMarkdownStop<CR>      " Kills the preview
