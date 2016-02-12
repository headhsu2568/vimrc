" ============================================================
"  Author: 凍仁翔 / chusiang.lai (at) gmail.com
"  Blog: http://note.drx.tw
"  Filename: keymap.vim
"  Modified: 2014-12-30 17:14
"  Description: Cutsom the shortcut-key / hot-key/ keymap for Myself.
"  Reference: 
" =========================================================== 

" - <leader>
let mapleader = ","

" - ESC
"imap <C-I>	<ESC>
"imap <C-O>	<ESC>
inoremap jj <ESC>

" - ~ 
cmap <S-ESC> ~
cmap <S-ESC> ~
inoremap <S-ESC> ~

" - Cursor Move
"  - insert mode
imap <C-h> <left>
imap <C-j> <down>
imap <C-k> <up>
imap <C-l> <right>

inoremap <C-d> <Home>
inoremap <C-e> <End>
vnoremap <C-d> <Home>
vnoremap <C-e> <End>
nnoremap <C-d> <Home>
nnoremap <C-e> <End>

"  - command mode
"cmap <C-h> <left>
"cmap <C-j> <down>
"cmap <C-k> <up>
"cmap <C-l> <right>
"cmap <C-0> <home>
"cmap <C-e> <end>
"cnoremap <C-x> <del>

"  - move one line down and up.
if has('gui_macvim')
  nmap <D-j>    :.m.+1<cr>
  nmap <D-k>    :.m.-2<cr>
  nmap <D-down> :.m.+1<cr>
  nmap <D-up>   :.m.-2<cr>
else
  nmap <A-j>    :.m.+1<cr>
  nmap <A-k>    :.m.-2<cr>
  nmap <A-down> :.m.+1<cr>
  nmap <A-up>   :.m.-2<cr>
endif


" - Re-Read vim Configure.
"nmap <leader>s		:source $HOME/.vimrc <CR>

" - quick quit vim.
nmap Z	:x <CR>

" - Save
"imap <C-S> <ESC>:w <CR>i
"nmap <C-S> :w <CR>
cmap WW	:w <CR>

" - Copy
nmap <leader>y	y$
nmap <C-c>	V"+y
vmap <C-c>	"+y
vmap <leader>y	"+y

"  - Copy the characters under the cursor until the end
imap <leader>y	<C-o>y$<ESC>

" - Command Mode
"cmap <C-e> <end>
"cnoremap <C-b> <home>
"cnoremap <C-f> (history)

" - Paste
"imap <C-B>	<ESC>p
"nmap <S-V>	<ESC>"+gp
nmap <leader>v	<ESC>"+gp
nmap <leader>V	<ESC>"+gP
"nmap <S-B>	<ESC>"+gP
nmap <leader>p	:set paste <CR>
nmap <leader>np	:set nopaste <CR>

" - Tabs
nmap tt		:tabnew <CR>
"nmap td		:tabclose <CR>
nmap tj		:tabnext <CR>
nmap tk	 	:tabprev <CR>
nmap te		:Texplore <CR>

if has('gui_macvim')
  nmap <D-1>	:tabn1 <CR>
  nmap <D-2>	:tabn2 <CR>
  nmap <D-3>	:tabn3 <CR>
  nmap <D-4>	:tabn4 <CR>
  nmap <D-5>	:tabn5 <CR>
  nmap <D-6>	:tabn6 <CR>
  nmap <D-7>	:tabn7 <CR>
  nmap <D-8>	:tabn8 <CR>
  nmap <D-9>	:tabn9 <CR>
else
  nmap <A-1>	:tabn1 <CR>
  nmap <A-2>	:tabn2 <CR>
  nmap <A-3>	:tabn3 <CR>
  nmap <A-4>	:tabn4 <CR>
  nmap <A-5>	:tabn5 <CR>
  nmap <A-6>	:tabn6 <CR>
  nmap <A-7>	:tabn7 <CR>
  nmap <A-8>	:tabn8 <CR>
  nmap <A-9>	:tabn9 <CR>
endif


" - Indent
imap <S-tab> <esc>m`<<``i
nmap <TAB> v>
nmap <S-TAB> v<
xnoremap <tab> >gv
vmap <tab> >gv
xnoremap <s-tab> <gv

" - Scroll
"  - hide scroll of split windows mode.
"nmap +b		:set guioptions+=b <CR>
"nmap +l		:set guioptions+=L <CR>
"nmap +r		:set guioptions+=r <CR>
"nmap -b		:set guioptions-=b <CR>
"nmap -l		:set guioptions-=L <CR>
"nmap -r		:set guioptions-=r <CR>
"nmap <F7>		:set guioptions+=mT <CR>
"nmap <F8>		:set guioptions-=mT <CR>

"  - Split
nmap <C-tab>	<C-w>w
imap <C-tab>	<C-o><C-w>w
nmap <C-h>		<C-w>h
nmap <C-l>		<C-w>l

" - Folding
"inoremap <F2> <C-o>za
"nnoremap <F2> za
"onoremap <F2> <C-c>za
"vnoremap <F9> zf
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <space> zf

" - Font Size
nmap <leader>f0	:set guifont=Monospace\ 14 <CR>
nmap <leader>f`	:set guifont=Monospace\ 10 <CR>
nmap <leader>f1	:set guifont=Monospace\ 12 <CR>
nmap <leader>f2	:set guifont=Monospace\ 14 <CR>
nmap <leader>f3	:set guifont=Monospace\ 16 <CR>
nmap <leader>f4	:set guifont=Monospace\ 20 <CR>

" - 自動補齊
inoremap  <leader><tab> <C-x><C-p>

"  - 自動補齊括弧
" inoremap  triger_char  mapping_str
" 映射指令     觸發字元     映射字串
"
" 註：<LEFT> 為向右鍵字元。
"inoremap ( ()<LEFT>
"inoremap < <><LEFT>
"inoremap [ []<LEFT>
"inoremap { {}<LEFT>
"inoremap ' ''<LEFT>
"inoremap " ""<LEFT>

" - Quick Search
"nnoremap <F3> :NumbersToggle<CR>
nmap <F3>	/<C-r>0<CR>

" - Color Scheme
nmap <leader>cj	:colorscheme jellybeans <CR>
nmap <leader>cf	:colorscheme fu <CR>
nmap <leader>ci	:colorscheme ir_black <CR>
nmap <leader>ct :colorscheme twilight <CR>
nmap <leader>cg :colorscheme grb256 <CR>
nmap <leader>cr :colorscheme railscasts <CR>
nmap <leader>cd :colorscheme distinguished <CR>

" - Preview current HTML file
"  - local.drx.tw (PHP)
"nnoremap <F5> :silent update<Bar>silent !firefox %:p:s?\(.\{-}/\)\{4}?http://local.drx.tw/?<CR>
"nnoremap <leader><F5> :silent update<Bar>silent !chrome %:p:s?\(.\{-}/\)\{4}?http://local.drx.tw/?<CR>

"  - current file (Ex: html, txt) 
"nnoremap <F6> :silent update<Bar>silent !firefox %:p &<CR>
"nnoremap <leader><F6> :silent update<Bar>silent !chrome %:p &<CR>

" - 80 column layout
"nmap <leader>l :call HightLightOverLength()<CR>
"nnoremap <leader>r :set columns=80<CR>

" - Quick open $HOME
nmap <leader>h		:tabnew <CR>:e $HOME<CR>

" - Open NERDTree
"nmap <leader>ne :NERDTree<CR>      " - integrate to Trinity keymap
cmap nt :NERDTree <CR>
cmap NT :NERDTree <CR>

" - Cscope keymap
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CSCOPE settings for vim           
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" This file contains some boilerplate settings for vim's cscope interface,
" plus some keyboard mappings that I've found useful.
"
" USAGE: 
" -- vim 6:     Stick this file in your ~/.vim/plugin directory (or in a
"               'plugin' directory in some other directory that is in your
"               'runtimepath'.
"
" -- vim 5:     Stick this file somewhere and 'source cscope.vim' it from
"               your ~/.vimrc file (or cut and paste it into your .vimrc).
"
" NOTE: 
" These key maps use multiple keystrokes (2 or 3 keys).  If you find that vim
" keeps timing you out before you can complete them, try changing your timeout
" settings, as explained below.
"
" Happy cscoping,
"
" Jason Duell       jduell@alumni.princeton.edu     2002/3/7
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This tests to see if vim was configured with the '--enable-cscope' option
" when it was compiled.  If it wasn't, time to recompile vim... 
if has("cscope")

    """"""""""""" Standard cscope/vim boilerplate

    " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
    set cscopetag

    " check cscope for definition of a symbol before checking ctags: set to 1
    " if you want the reverse search order.
    set csto=0

    " add any cscope database in current directory
    if filereadable("cscope.out")
        cs add cscope.out  
    " else add the database pointed to by environment variable 
    elseif $CSCOPE_DB != ""
        cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
    "set cscopeverbose
    set nocscopeverbose         " avoid to show 'E568: duplicate cscope database not added'


    """"""""""""" My cscope/vim key mappings
    "
    " The following maps all invoke one of the following cscope search types:
    "
    "   's'   symbol: find all references to the token under cursor
    "   'g'   global: find global definition(s) of the token under cursor
    "   'c'   calls:  find all calls to the function name under cursor
    "   't'   text:   find all instances of the text under cursor
    "   'e'   egrep:  egrep search for the word under cursor
    "   'f'   file:   open the filename under cursor
    "   'i'   includes: find files that include the filename under cursor
    "   'd'   called: find functions that function under cursor calls
    "
    " Below are three sets of the maps: one set that just jumps to your
    " search result, one that splits the existing vim window horizontally and
    " diplays your search result in the new window, and one that does the same
    " thing, but does a vertical split instead (vim 6 only).
    "
    " I've used CTRL-\ and CTRL-@ as the starting keys for these maps, as it's
    " unlikely that you need their default mappings (CTRL-\'s default use is
    " as part of CTRL-\ CTRL-N typemap, which basically just does the same
    " thing as hitting 'escape': CTRL-@ doesn't seem to have any default use).
    " If you don't like using 'CTRL-@' or CTRL-\, , you can change some or all
    " of these maps to use other keys.  One likely candidate is 'CTRL-_'
    " (which also maps to CTRL-/, which is easier to type).  By default it is
    " used to switch between Hebrew and English keyboard mode.
    "
    " All of the maps involving the <cfile> macro use '^<cfile>$': this is so
    " that searches over '#include <time.h>" return only references to
    " 'time.h', and not 'sys/time.h', etc. (by default cscope will return all
    " files that contain 'time.h' as part of their name).


    " To do the first type of search, hit 'CTRL-\', followed by one of the
    " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
    " search will be displayed in the current window.  You can use CTRL-T to
    " go back to where you were before the search.  
    "

    nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>  
    nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>  
    nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
    nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>  


    " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
    " makes the vim window split horizontally, with search result displayed in
    " the new window.
    "
    " (Note: earlier versions of vim may not have the :scs command, but it
    " can be simulated roughly via:
    "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>  

    nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR> 
    nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR> 
    nmap <C-@>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>   
    nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR> 


    " Hitting CTRL-space *twice* before the search type does a vertical 
    " split instead of a horizontal one (vim 6 and up only)
    "
    " (Note: you may wish to put a 'set splitright' in your .vimrc
    " if you prefer the new window on the right instead of the left

    nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>
    nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>   
    nmap <C-@><C-@>i :vert scs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
    nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>


    """"""""""""" key map timeouts
    "
    " By default Vim will only wait 1 second for each keystroke in a mapping.
    " You may find that too short with the above typemaps.  If so, you should
    " either turn off mapping timeouts via 'notimeout'.
    "
    "set notimeout 
    "
    " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
    " with your own personal favorite value (in milliseconds):
    "
    "set timeoutlen=4000
    "
    " Either way, since mapping timeout settings by default also set the
    " timeouts for multicharacter 'keys codes' (like <F1>), you should also
    " set ttimeout and ttimeoutlen: otherwise, you will experience strange
    " delays as vim waits for a keystroke after you hit ESC (it will be
    " waiting to see if the ESC is actually part of a key code like <F1>).
    "
    "set ttimeout 
    "
    " personally, I find a tenth of a second to work well for key code
    " timeouts. If you experience problems and have a slow terminal or network
    " connection, set it higher.  If you don't set ttimeoutlen, the value for
    " timeoutlent (default: 1000 = 1 second, which is sluggish) is used.
    "
    "set ttimeoutlen=100

endif

" Trinity keymap
" Open and close all the three plugins on the same time 
nmap <F7>   :TrinityToggleAll<CR> 

" Open and close Taglist and Source Explorer
nmap <F8>   :TrinityToggleTagListSrcExpl<CR>

" Open and close Taglist and NERDTree
nmap <F9>   :TrinityToggleTagListNERDTree<CR>

" Open and close the Source Explorer separately 
"nmap <F8>  :TrinityToggleSourceExplorer<CR> 
nmap <leader>se :TrinityToggleSourceExplorer<CR> 

" Open and close the Taglist separately 
"nmap <F9>  :TrinityToggleTagList<CR> 
nmap <leader>tl :TrinityToggleTagList<CR>

" Open and close the NERD Tree separately 
"nmap <F10> :TrinityToggleNERDTree<CR>
nmap <leader>ne :TrinityToggleNERDTree<CR>

" Tagbar keymap
nmap <leader>tb :TagbarToggle<CR>

" Multiple Cursor keymap
let g:multi_cursor_skip_key='<C-m>'
