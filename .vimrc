set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" #### UltiSnips Begins
" plugin on GitHub repo
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" #### UltiSnips Ends

" #### IndentLine Begins
Plugin 'Yggdroot/indentLine'
let g:indentLine_char = 'c'
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '|'
" #### IndentLine Ends

" Supertab
Plugin 'ervandew/supertab'

" DelimitMate
Plugin 'Raimondi/delimitMate'
"let delimitMate_expand_cr = 1

" NerdTree
Plugin 'scrooloose/nerdtree'
nmap <leader>d :NERDTreeToggle<CR>
let NERDTreeDirArrows=0

Bundle 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 1

" CTRLP
Plugin 'kien/ctrlp.vim'
" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*/build/**
" disable caching
let g:ctrlp_use_caching=0

Plugin 'file:///Users/rodolfo/rainbow_parentheses.vim'
let g:rbpt_colorpairs = [
			\ ['darkgreen',   'firebrick3'],
			\ ['darkcyan',    'RoyalBlue3'],
			\ ['darkmagenta', 'DarkOrchid3'],
			\ ['red',         'firebrick3'],
			\ ]

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
let g:easytags_async=1
let g:easytags_syntax_keyword = 'always'
let g:easytags_python_enabled=1

"Plugin 'dbarsam/vim-rainbow-parentheses'
"let g:rainbow_activate = 1
"let b:rainbow_matchpairs = [['(', ')'], ['\[', '\]'], ['{', '}']]
"let b:rainbow_operators = ['-', '+', '*']

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set background=dark
set hlsearch
set nu
set tabstop=4
set shiftwidth=4
set noexpandtab
set list listchars=tab:»·,trail:·,extends:»
set wildmode=longest,list,full
set wildmenu
set backspace=2
set mouse=a
set ttymouse=xterm2

let java_highlight_functions="style"
let java_comment_strings=1
let java_highlight_java_lang_ids=1
let java_highlight_all=1
let java_highlight_debug=1
let java_ignore_javadoc=1
let java_highlight_java_lang_ids=1

map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

au BufReadPost *.twig colorscheme koehler
au BufReadPost *.css colorscheme slate
au BufReadPost *.js colorscheme slate2
au BufReadPost *.py colorscheme molokaiyo
au BufReadPost *.html colorscheme monokai
au BufReadPost,BufRead,BufNewFile *.java colorscheme monokai
au BufReadPost *.php colorscheme monokai
au BufReadPost,BufRead,BufNewFile,VimEnter * RainbowParenthesesToggle
au BufReadPost,BufRead,BufNewFile,Syntax * RainbowParenthesesLoadRound
au BufReadPost,BufRead,BufNewFile,Syntax * RainbowParenthesesLoadSquare
au BufReadPost,BufRead,BufNewFile,Syntax * RainbowParenthesesLoadBraces
au FileType java set tags=~/.tags,~/.vimtags
au FileType java HighlightTags

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

