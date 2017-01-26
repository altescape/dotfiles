set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Plugins
" Functionality
Plugin 'Shougo/neocomplete.vim'
Plugin 'bling/vim-airline'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'godlygeek/tabular'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-fugitive'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-ruby/vim-ruby'
Plugin 'ryanoasis/vim-devicons'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tomtom/tlib_vim'

" Plugins
" Syntax/Languages
Plugin 'ap/vim-css-color'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'moll/vim-node'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'othree/yajs.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-rails'
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" All of your Plugins must be added before the following line
call vundle#end()         " required
filetype plugin indent on " required
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
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch                   " set show matching parenthesis
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab                    " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch                    " highlight search terms
set incsearch                   " show search matches as you type

set title                        " change the terminal's title
set visualbell                   " don't beep
set noerrorbells                 " don't beep
imap <C-c> <CR><Esc>O
set nobackup
set noswapfile
set pastetoggle=<F2>
nmap <leader>v yo<CR>

" colour scheme options, use with iterms 'Arthur' colour scheme
set background=dark
let g:hybrid_use_Xresources=1
colorscheme hybrid

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

" Set syntax colour for ES6|JavaScript
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

" Insert a new line without entering insert mode
" http://vim.wikia.com/wiki/Insert_newline_without_entering_insert_mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" command Bdeleteall 1,1000bd

" NERDTree opens always on the right
let g:NERDTreeWinPos = "right"

" NERDTree quick commands
nmap <space> :NERDTreeFocus<CR>
nmap <space><space> :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('rb', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('cpp', 'Magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('h', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('sh', 'white', 'none', 'white', '#151515')

" Toggle invisibles
:nnoremap <leader>i :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<<CR>

" Highlight off
:nnoremap <leader>h :nohl<CR>

set mouse=nicr

let g:neocomplete#enable_at_startup = 1

" Mikes Customs commands
" Turn off highlighting
nnoremap <leader>h :nohl<CR>

" Toggles invisibles plus shows all invisibles
nnoremap <leader>i :set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<<CR>
nnoremap <leader>i :set list! list?<CR>

let python_highlight_all = 1

" indentation guides
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" START per project settings can be taken from here
" and stored in .vimrc at top of project directory
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set colorcolumn=110 " highlight column 110
highlight ColorColumn ctermbg=black
" END

map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

command! -nargs=* Wrap set wrap linebreak nolist tw=100
command! -nargs=* NoWrap set nowrap nolist

" Swap windows/split screens
function! MarkWindowSwap()
    let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
    "Mark destination
    let curNum = winnr()
    let curBuf = bufnr( "%" )
    exe g:markedWinNum . "wincmd w"
    "Switch to source and shuffle dest->source
    let markedBuf = bufnr( "%" )
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' curBuf
    "Switch to dest and shuffle source->dest
    exe curNum . "wincmd w"
    "Hide and open so that we aren't prompted and keep history
    exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

" Syntastic
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']

" Save view when unloading buffer and load view when entering buffer
" This is good for saving code folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Copy whole document
:nnoremap <leader>c :%y+<CR>

" crontab workaround
autocmd filetype crontab setlocal nobackup nowritebackup
