set nocompatible
if has('mouse')
	set mouse=a
	set ttymouse=xterm2
endif
  


" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
" 
let mapleader = "œ"
let g:mapleader = "œ"
   
" Fast saving
nmap <leader>w :w!<cr>
inoremap <leader>w :w <ESC>:w<CR>i

"noremap <leader>w :w<CR>
inoremap jj <ESC>
inoremap <F3> <ESC>:w<CR>a
syntax on


"set backup
"set backupdir=~/.vim/backups
set nobackup
set noswapfile
set directory=~/.vim/tmp
set history=1000

" niveau d'annulation
set undolevels=150

" suffixes à cacher
set suffixes=.jpg,.png,.jpeg,.gif,.bak,~,.swp,.swo,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyo

set timeoutlen=1000 ttimeoutlen=0

set number
set numberwidth=5
""set cursorline
set ruler

set backspace=indent,eol,start
set listchars=tab:>-,trail:.,nbsp:.

set laststatus=2
set hidden

" Turn off visual bell
set vb t_vb=

"Set tab spacing/tabs
set et sw=4 ts=4
set smartindent 
set autoindent

" Enable the wildmenu buffer
set wildmenu
set wildmode=full

" Make wildmenu behave like similar to Bash completion.
"set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Format the statusline
"set statusline=%F%m\ %r\ Line:%l\/%L,%c\ %p%%

set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

filetype on 
filetype plugin on
filetype indent on

syntax on

set wildignore+=*.o,*.obj,tmp/**,bin/**,*.pyc

set incsearch
set hlsearch
set ignorecase
set smartcase

set expandtab
set tabstop=4

set foldenable
set foldmethod=syntax
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
set foldlevel=2

" space open/closes folds
nnoremap <space> za

" Show partial commands in the last line of the screen
set showcmd

"raise a dialogue asking if you wish to save changed files.
set confirm

" Set to auto read when a file is changed from the outside
set autoread

set encoding=utf-8

au Filetype py
  \ set tabstop=4
  \ set softtabstop=4
  \ set shiftwidth=4
  \ set textwidth=120
  \ set expandtab
  \ set autoindent
  \ set fileformat=unix


" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


set t_Co=256
colorscheme desert
"colorscheme default
set background=dark


" Set extra options when running in GUI mode
if has("gui_running")
    set guifont=Monospace\ 11
    set guioptions-=T
    colorscheme solarized
    set guioptions+=e
    set guitablabel=%M\ %t
endif


map <leader>q <ESC>:qa!<CR>


silent !stty -ixon > /dev/null 2>/dev/null

" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <F2> :set cuc!<CR>

vmap <C-c> "+y<CR>

" set guiheadroom=0

