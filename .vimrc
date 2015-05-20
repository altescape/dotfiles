set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" My plugins
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-projectionist'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'caike/snipmate.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-ruby/vim-ruby'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kana/vim-textobj-user'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'bling/vim-airline'
Plugin 'digitaltoad/vim-jade'
Plugin 'moll/vim-node'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'vim-scripts/vim-stylus'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'wookiehangover/jshint.vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'burnettk/vim-angular'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
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
set t_Co=256
set background=dark
colorscheme gruvbox
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

" AngularJS
" Add custom tags here if necessary, two examples below:
let g:syntastic_html_tidy_ignore_errors = ['proprietary attribute "myhotcompany-']
let g:syntastic_html_tidy_blocklevel_tags = ['myCustomTag']

" Insert a new line without entering insert mode
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" Deletes all buffers
command Bdeleteall 1,1000bd

" NERDTree opens always on the right
let g:NERDTreeWinPos = "right"

" NERDTree quick commands
nmap <space> :NERDTreeFocus<CR>
nmap <space><space> :NERDTreeToggle<CR>

" NERDTree move quickly between views with CTRL + J and CTRL + K
nmap <C-J> <C-W>j<C-W>
nmap <C-K> <C-W>k<C-W>
