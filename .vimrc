runtime! debian.vim

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype indent on
endif

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

color slate
colorscheme railscasts      " 设定配色方案
set guifont=Monaco\ 12      " 设定字体及其大小

filetype plugin on

set autoindent
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set langmenu=zh_CN.UTF-8    

set helplang=cn    

set ai
set nu
set ru
set expandtab
set tabstop=2
set shiftwidth=2
set guioptions-=m
set guioptions-=T  
set ignorecase  "搜索不区分大小写
set foldopen=all
set cursorline  " 突出显示当前行
set incsearch   "搜索时跳转到已找到的位置
set hlsearch    "高亮显示搜索到的文字
"设置工作目录为当前编辑文件的目录
set bsdir=buffer
set autochdir

:inoremap ( ()<ESC>i
:inoremap { {  }<ESC>i<LEFT>
":inoremap { {<CR>}<ESC>O    中间隔一行
":inoremap { {}<ESC>i<LEFT>
":inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap < <><ESC>i

source $VIMRUNTIME/mswin.vim"加载Windows快捷键映射
behave mswin

"""""""""""""""""Taglist设置"""""""""""""""""
""let Tlist_Auto_Open = 1
let Tlist_Ctags_Cmd = '/usr/bin/ctags'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open=0
"let mapleader=","

"nnoremap <silent> <leader>ff:call g:Jsbeautify()<cr>
