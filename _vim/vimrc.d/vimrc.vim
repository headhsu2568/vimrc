" = Origin Environment =

" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

set showcmd		" Show (partial) command in status line.
set showmode	" Show '-insert-' Mode at the lower left.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search (is), 使用隨打即找的搜尋功能。預設 off。
"set autowrite		" Automatically save before commands like :next and :make
"set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set mouse=nv		" Enable mouse usage (Normal + Visual modes)
set nocompatible
set backspace=2     " Enable backspace

" = Cutsom Main Environment =

set autochdir		" auto cd curent dir.
set fileencodings=utf8
set hlsearch		" (hls) Hightlight in Search
set ignorecase		" (ic) Case sensitive searches
"set nobackup
set ruler	"Show Row & Colume position

" - move swap and backup files from your working directory
if has('win32')
	set backupdir=/cygdrive/e/Cache
	set directory=/cygdrive/e/Cache
else
	set backupdir=/tmp
	set directory=/tmp
endif

" - indent.
set autoindent		" (ai)
set cindent
set expandtab		" Set Tab to Space.
set smartindent
set tabstop=4
set softtabstop=4	" Set Soft tab stop.
set shiftwidth=4	" Set Soft tab width.
filetype indent on

" - Set Scroll setting
set scrolloff=3		" We keep 3 lines when scrolling .
"set scrolljump=5	" Jump 5 lines when scrolling.

" - Wild Mode
"set wildmode=full,list
"set wildmode=list:full
set wildmode=longest,list	" 類似 bash 的自動補齊，有相同開頭才補，而不是自動填上第一個完整名稱。
set wildignore+=*.o,*.a,*.so,*.obj,*.exe,*.lib,*.ncb,*.opt,*.plg,.svn,.git
set wildignore+=*.png,*.jpg,*.gif,*.svg,*.xpm
" set wildoptions
"set  winaltkeys=no

" - 自動換行
set wrap

" - Do not redraw while running macros (much faster).
set lazyredraw

" - Set Folding 
set foldenable
set foldmethod=indent
set foldcolumn=1
set foldlevel=6

"  - save my folds.
"if !isdirectory("view")
"  " put view to tmp.
"  silent !mkdir /tmp/vim-view/ > /dev/null 2>&1
"  silent !ln -s /tmp/vim-view/ ~/.vim/view > /dev/null 2>&1
"endif
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" 在 fish 裡相容 Vim 裡的 Neobundle。
set shell=/bin/tcsh

" 讓 NERDTree 開在右邊 window
let NERDTreeWinPos=1

" Tagbar reconfiguration
let tagbar_left=1
let tagbar_width=25
let tagbar_previewwin_pos='botright'
let tagbar_autopreview=1

" -----------------------------------
"  Author : Chu-Siang Lai
"  E-mail : jonny (at) drx.tw
"  Blog : http://note.drx.tw
" -----------------------------------
