"文件修改之后自动载入
set autoread
"备份,到另一个位置. 防止误删
"set backup
"set backupext=.bak
"set backupdir=~/bak/vimbak/
"取消备份
set nobackup
set noswapfile
"退出vim后 内容显示在终端屏幕
set t_ti= t_te=

"history存储长度
set history=2000
"显示行号
set number
"取消换行
set nowrap
"显示当前的行号列号
set ruler
"突出显示当前行/列
set cursorcolumn
set cursorline
"在状态栏显示正在输入的命令
set showcmd
"Show current mode
set showmode
"设置滚屏
set scrolloff=20

" 代码折叠
set foldenable
" 折叠方法
" manual    手工折叠
" indent    使用缩进表示折叠
" expr      使用表达式定义折叠
" syntax    使用语法定义折叠
" diff      对没有更改的文本进行折叠
" marker    使用标记进行折叠, 默认标记是 {{{ 和 }}}
set foldmethod=syntax
set foldlevel=99

set tabstop=4                " 设置Tab键的宽度        [等同的空格个数]
set shiftwidth=4             " number of spaces to use for autoindenting
set softtabstop=4            " 按退格键时可以一次删掉 4 个空格
set smarttab                 " insert tabs on the start of a line according to shiftwidth, not tabstop 按退格键时可以一次删掉 4 个空格
set expandtab                " 将Tab自动转化成空格    [需要输入真正的Tab键时，使用 Ctrl+V + Tab]

"==========================================
"===========  hot key  自定义快捷键
"==========================================
let mapleader = ','
let g:mapleader = ','

inoremap kj <Esc>

map Y y$
"==========================================
"=========== insert mode hot key  自定义快捷键
"==========================================

imap <C-h> <Left>
imap <C-l> <Right>
imap <C-j> <Down>
imap <C-k> <Up>

imap <C-a> <Home>
imap <C-e> <End>

imap <C-x> <Del>
" imap <C-f> <BS>

imap <C-d> <PageDown>
imap <C-u> <PageUp>

" command-T window
" let g:CommandTCursorLeftMap  = ['<Left>',  '<C-h>']
" let g:CommandTCursorRightMap = ['<Right>', '<C-l>']
" let g:CommandTBackspaceMap   = ['<BS>',    '<C-f>']
" let g:CommandTDeleteMap      = ['<Del>',   '<C-d>']

"==========================================
"===========  begin  bundle ===============
"==========================================
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" 目录导航
Bundle 'scrooloose/nerdtree'
map <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
"let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$','^\.git$', '^\.svn$', '^\.hg$' ]
"let g:netrw_home='~/bak'
"close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

" 状态栏增强展示
Bundle 'Lokaltog/vim-powerline'
let g:Powerline_symbols = 'unicode'

" 主题 solarized
Bundle 'altercation/vim-colors-solarized'
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"

" for markdown
Bundle 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled=1

" for javascript
Bundle 'pangloss/vim-javascript'
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" for coffeescript
Bundle 'kchmck/vim-coffee-script'

" for jquery
Bundle 'nono/jquery.vim'

" for show no user whitespaces
Bundle 'bronson/vim-trailing-whitespace'
map <leader><space> :FixWhitespace<cr>

" for search file
" hot key:
"       ctrl + p
Bundle 'kien/ctrlp.vim'

" for tab manage
" hot key:
"       ctrl + space
"           ctrl + t    create new tab
"           [, ]        select tab
"           =           rename tab
"           h, j, k, l  select file
Bundle 'szw/vim-ctrlspace'


filetype plugin indent on     " required
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.

" ====================  Bundle end ==================


"开启语法高亮
syntax enable
syntax on
"主题和颜色展示 for solarized
colorscheme solarized
set background=dark

