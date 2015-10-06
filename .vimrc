set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
Plugin 'ap/vim-css-color'
Plugin 'bling/vim-airline'
Plugin 'burnettk/vim-angular'
Plugin 'caike/snipmate.vim'
Plugin 'godlygeek/tabular'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kana/vim-textobj-user'
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'moll/vim-node'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomtom/tlib_vim'
Plugin 'tpope/vim-surround'
"Plugin 'vim-scripts/vim-stylus'
Plugin 'wookiehangover/jshint.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'vim-scripts/JavaScript-Indent'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

" Options and settings
syntax on
set hidden
set nowrap
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set tabstop=2                   " The width of a TAB is set to 4.Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=2                " Indents will have a width of 4
set softtabstop=2               " Sets the number of columns for a TAB
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set expandtab                   " Expand TABs to spaces
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type
set background=dark
" solarized options 
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_termcolors=16
let g:solarized_termtrans=1
colorscheme solarized
set title                        " change the terminal's title
set visualbell                   " don't beep
set noerrorbells                 " don't beep
imap <C-c> <CR><Esc>O
set nobackup
set noswapfile
set pastetoggle=<F2>

" genius!: http://nvie.com/posts/how-i-boosted-my-vim/#get-efficient-shortcut-mappings
nnoremap ; :

" Stop using the blasted arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" READ MORE HERE: http://nvie.com/posts/how-i-boosted-my-vim/

" These are the tweaks I apply to YCM's config, you don't need them but they might help.
" YCM gives you popups and splits by default that some people might not
" like, so these should tidy it up a bit for you.
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview

" airline plugin settings 
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

" jshint
let g:syntastic_check_on_open=1

" Set syntax colour for ES6|JavaScript
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" javascript libraries syntax
let g:used_javascript_libs = 'angularjs,angularui,requirejs,underscore,jquery,jasmine,chai'

" AngularJS
" Add custom tags here if necessary, two examples below:
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "myhotcompany-']
let g:syntastic_html_tidy_blocklevel_tags = ['myCustomTag']

" Insert a new line without entering insert mode
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Buffers deleteall
command Bdeleteall 1,1000bd

" NERDTree opens always on the right
let g:NERDTreeWinPos = "right"

" NERDTree quick commands
nmap <space> :NERDTreeFocus<CR>
nmap <space><space> :NERDTreeToggle<CR>

set mouse=nicr

" UltiSnips Snippets
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-space>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>""
