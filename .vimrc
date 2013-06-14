let g:pathogen_disabled = []
call add(g:pathogen_disabled, 'vim-endwise')
call add(g:pathogen_disabled, 'yankring.vim')
call add(g:pathogen_disabled, 'YouCompleteMe')

call pathogen#infect()

fun! MySys()
  return "mac"
endfun

set shell=/bin/sh

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on

"set relativenumber
set numberwidth=4
set number
set backspace=indent,eol,start
"set autochdir

set noshowcmd              " don't display incomplete commands
set nolazyredraw           " turn off lazy redraw

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

nnoremap ; :
inoremap jj <esc>
cnoremap jj <esc>
map <F1> <esc>
imap <F1> <esc>
map <F2> :nohl<cr>
set pastetoggle=<F7>
map <leader>x :%!xxd<cr>

cmap w!! %!sudo tee > /dev/null %


if has("win32")
    nmap <F6> :!start explorer /e,/select, %:p<CR>
    imap <F6> <Esc><F6>
    command! -nargs=0 Explor :!start explorer /e,/select, %:p
    command! -nargs=0 Explorer :!start explorer /e,/select, %:p
endif

if MySys() == "mac"
    nmap <F6> :!open .<CR>
    imap <F6> <Esc><F6>
endif

" 修改等号两端
nmap c=r $F=lc$<space>
nmap c=l $F=hc^

"set matchpairs=':',":",(:),{:},[:]

" 命令行bash快捷键
"cnoremap <C-A> <Home>
cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <A-b> <S-Left>
cnoremap <A-f> <S-Right>
cnoremap <A-B> <S-Left>
cnoremap <A-F> <S-Right>

"set foldenable
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
vnoremap <space> :fold<CR>

set foldnestmax=10
set foldenable
set foldlevel=1

" 按下 Q 不进入 Ex 模式，而是退出
nmap Q :x<cr>

" 删除光标处的单词
"imap <c-w> <Esc>ebdei

imap <c-BS> <Esc>ciw
imap <a-BS> <Esc>cB

"nnoremap <tab> %
"vnoremap <tab> %


" new line
imap <s-cr> <esc>o

cmap <C-V>      <C-R>+
cmap <S-Insert>     <C-R>+
imap <S-Insert>     <C-V>
vmap <S-Insert>     <C-V>
noremap <C-S>       :update<CR>
vnoremap <C-S>      <C-C>:update<CR>
"noremap <C-Z> u
inoremap <C-S>      <C-O>:update<CR>
"inoremap <C-Z> <C-O>u
if has("gui")
  noremap <M-Space> :simalt ~<CR>
  inoremap <M-Space> <C-O>:simalt ~<CR>
  cnoremap <M-Space> <C-C>:simalt ~<CR>
endif
"noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
"cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG
noremap <C-F4> <C-W>c
inoremap <C-F4> <C-O><C-W>c
cnoremap <C-F4> <C-C><C-W>c
onoremap <C-F4> <C-C><C-W>c

" Show invisible
"nmap <leader>l :set list!<CR>
"set listchars=tab:>\ ,eol:¬
"set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
autocmd filetype html,xml set listchars-=tab:>.

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59


" Fast saving
nmap <leader>w :w!<cr>

" Sessions
"nmap <leader>so :OpenSession<cr>
"nmap <leader>ss :SaveSession<cr>
nmap <leader>so :OpenSession<space>
nmap <leader>sd :DeleteSession<space>
nmap <leader>ss :SaveSession<space>
nmap <leader>sv :ViewSession<cr>
let g:session_autoload = 'no'
"let g:session_autosave = 1
"let g:session_autoload = 0

let g:Powerline_symbols = 'fancy'

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmenu "Turn on WiLd menu

set ruler "Always show current position

set cmdheight=2 "The commandbar height

set hidden "Change buffer - without saving

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase "Ignore case when searching
set smartcase
set gdefault

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

" Set font according to system

set go=em
" set gfn=Ubuntu\ Mono:h14
"set guifont=Panic\ Sans:h12
set guifont=Meslo\ LG\ L\ DZ:h12
"set guifont=Inconsolata:h16
" set guifont=Meslo\ LG\ M\ DZ:h12
"set guifont=Inconsolata\ xl:h16
"set guifont=Inconsolata-dz:h14
"set guifont=Inconsolata:h14
"set guifont=Monaco:h12
"set guifont=Panic\ Sans:h12
"set gfw=STHeiTi:h10

"colorscheme wombat256
"colorscheme Fluidvision
"set background=dark
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
"let g:solarized_contrast="normal"
"let g:solarized_visibility="high"
"colorscheme solarized
"colo molokai
colo harlequin
"set cursorline
"colorscheme pastie
if has("gui_running")
  "set background=light
  "colorscheme Pastie2
  "set background=light
  "colorscheme solarized
  "so ~/.vim/autoload/togglebg.vim
  set invmacmeta
  "set transparency=10
  set go-=T
  set t_Co=256
  "set background=dark
  "colorscheme clouds_midnight
  "colorscheme molokai
  "autocmd filetype html,xml set listchars-=tab:>.
  "set nonu
else
  set t_Co=256

endif

set encoding=utf8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set fileformat=unix
set ffs=unix,mac,dos "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile

"Persistent undo
try
    if MySys() == "windows"
      set undodir=~/vimfiles/undo
    else
      set undodir=~/.vim_runtime/undodir
    endif

    set undodir=~/.vimundo
    set undofile
    set undolevels = 1000
    set undoreload = 10000
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=4
set tabstop=4
set shiftround
set softtabstop=4
set smarttab

" This is specific to rails apps, but I will not bind it to a particular
" filetype
function! TwoSpace()
    setlocal tabstop=2
    setlocal shiftwidth=2
    setlocal softtabstop=2
endfunction
au FileType ruby call TwoSpace()
au BufNewFile,BufRead *.erb call TwoSpace()

set lbr
set tw=500

set autoindent "Auto indent
"set smartindent "Smart indet
set copyindent "Smart indet
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Really useful!
"  In visual mode when you press * or # to search for the current selection
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>


function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

" From an idea by Michael Naumann
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Command mode related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>

" $q is super useful when browsing on the command line
cno $q <C-\>eDeleteTillSlash()<cr>

" Bash like keys for the command line
cnoremap <C-A>      <Home>
cnoremap <C-E>      <End>
cnoremap <C-K>      <C-U>

cnoremap <C-P> <Up>
cnoremap <C-N> <Down>

func! Cwd()
  let cwd = getcwd()
  return "e " . cwd
endfunc

func! DeleteTillSlash()
  let g:cmd = getcmdline()
  if MySys() == "linux" || MySys() == "mac"
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
  else
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
  endif
  if g:cmd == g:cmd_edited
    if MySys() == "linux" || MySys() == "mac"
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
    else
      let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
    endif
  endif
  return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
  return a:cmd . " " . expand("%:p:h") . "/"
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
"map <space> /
"map <c-space> ?
map <silent> <leader><cr> :noh<cr>

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:q<cr>

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Use the arrows to something usefull
map <right> :bn<cr>
map <left> :bp<cr>

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit<space>
"map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Tab navigation
map <a-h> gT
map <a-l> gt
map <a-]> gt
map <a-[> gT
map <a-1> 1gt
map <a-2> 2gt
map <a-3> 3gt
map <a-4> 4gt
map <a-5> 5gt
map <a-6> 6gt
map <a-7> 7gt
map <a-8> 8gt
map <a-9> :tablast<CR>

"map <c-t> :tabnew<CR>

imap <a-]> <ESC>gt
imap <a-[> <ESC>gT
"imap <c-t> <ESC>:tabnew<CR>

imap <D-]> <ESC>gt
imap <D-[> <ESC>gT
imap <D-1> <ESC>1gt
imap <D-2> <ESC>2gt
imap <D-3> <ESC>3gt
imap <D-4> <ESC>4gt
imap <D-5> <ESC>5gt
imap <D-6> <ESC>6gt
imap <D-7> <ESC>7gt
imap <D-8> <ESC>8gt
imap <D-9> <ESC>:tablast<CR>
map <D-1> <ESC>1gt
map <D-2> <ESC>2gt
map <D-3> <ESC>3gt
map <D-4> <ESC>4gt
map <D-5> <ESC>5gt
map <D-6> <ESC>6gt
map <D-7> <ESC>7gt
map <D-8> <ESC>8gt
map <D-9> <ESC>:tablast<CR>

" When pressing <leader>cd switch to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>


command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Specify the behavior when switching between buffers
if has("gui_running")
    try
    set switchbuf=usetab
    set stal=2
    catch
    endtry
endif


""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
" Always hide the statusline
set laststatus=2

" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ %{fugitive#statusline()}\ \ \ Line:\ %l/%L:%c

" Syntastic
set statusline+=%#warningmsg#
set statusline+=\ %{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_error_symbol='✗'
let g:syntastic_warning_symbol='⚠'
let g:syntastic_ruby_checkers=['rubocop']
nnoremap <leader>n :lnext<cr>
nnoremap <leader>p :lprev<cr>


function! CurDir()
    let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
    return curdir
endfunction

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    else
        return ''
    endif
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Parenthesis/bracket expanding
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"vnoremap $1 <esc>`>a)<esc>`<i(<esc>
"vnoremap $2 <esc>`>a]<esc>`<i[<esc>
"vnoremap $3 <esc>`>a}<esc>`<i{<esc>
"vnoremap $$ <esc>`>a"<esc>`<i"<esc>
"vnoremap $q <esc>`>a'<esc>`<i'<esc>
"vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
"inoremap $3 {}<esc>i
"inoremap $4 {<esc>o}<esc>O
"inoremap $q ''<esc>i
"inoremap $e ""<esc>i
"inoremap $t <><esc>i
"inoremap $2 []<esc>i
"inoremap $1 ()<esc>i


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Abbrevs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iab xdate <c-r>=strftime("%d/%m/%y %H:%M:%S")<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Remap VIM 0
map 0 ^

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <D-j> mz:m+<cr>`z
nmap <D-k> mz:m-2<cr>`z
vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
"autocmd BufWrite *.py :call DeleteTrailingWS()
"nnoremap <silent> <F5>  :call DeleteTrailingWS()<CR>
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

set guitablabel=%t


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Do :help cope if you are unsure what cope is. It's super useful!
"map <leader>cc :botright cope<cr>
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>

" toggle colored right border after 80 chars
set colorcolumn=0
let s:color_column_old = 79

function! s:ToggleColorColumn()
    if s:color_column_old == 0
        let s:color_column_old = &colorcolumn
        windo let &colorcolumn = 0
    else
        windo let &colorcolumn=s:color_column_old
        let s:color_column_old = 0
    endif
endfunction



""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitRight=0
let g:bufExplorerSplitVertical=1
let g:bufExplorerSplitVertSize = 30
let g:bufExplorerUseCurrentWindow=1

let g:bufExplorerSortBy='mru'
"map <leader>o :BufExplorer<cr>
"map <leader>b :BufExplorerVerticalSplit<cr>
"map <F4> :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => Minibuffer plugin
""""""""""""""""""""""""""""""
let g:miniBufExplModSelTarget = 1
let g:miniBufExplorerMoreThanOne = 2
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 25
let g:miniBufExplSplitBelow=1

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>u :TMiniBufExplorer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Omni complete functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd FileType css set omnifunc=csscomplete#CompleteCSS


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Pressing ,ss will toggle and untoggle spell checking
"map <leader>ss :setlocal spell!<cr>

"Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


""""""""""""""""""""""""""""""
" => Ruby section
""""""""""""""""""""""""""""""
au FileType ruby imap <S-CR> <CR><CR>end<Esc>-cc
au FileType ruby map <buffer> <leader><space> :w!<cr>:!ruby %<cr>
au BufNewFile,BufRead Podfile,*.podspec set filetype=ruby

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> <leader><space> :w!<cr>:!python %<cr>
"au BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

au FileType python,man map <buffer> <F1> :call ShowPyDoc('<C-R><C-W>', 1)<CR>
let python_highlight_space_errors = 0

let g:pydiction_location = '~/vim-addons/Pydiction/complete-dict'


""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return
au FileType javascript inoremap <buffer> $f //--- PH ----------------------------------------------<esc>FP2xi

au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery
au BufRead,BufNewFile *.json set ft=javascript

map <Leader>jf <Esc>:%!python -m json.tool<CR>

function! JavaScriptFold()
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
    return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => nerdtree plugin
""""""""""""""""""""""""""""""
map <F3> :NERDTreeToggle<cr>

""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:ycm_key_list_select_completion = ['<TAB>', '<Down>', '<Enter>']
let g:ycm_key_invoke_completion = "<a-/>"

""""""""""""""""""""""""""""""
" => neocomplcache plugin
""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabMappingForward = '<tab>'
set previewheight=0
set nopreviewwindow
set completeopt=menu
let g:sparkupNextMapping = '<c-x>'
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_disable_auto_complete = 0
let g:neocomplcache_snippets_dir = "~/.vim/snippets"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"
inoremap <expr><TAB>  pumvisible() ? neocomplcache#close_popup() : "\<TAB>"
imap <expr><CR> neocomplcache#sources#snippets_complete#expandable() == 1 ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? neocomplcache#close_popup() : "\<CR>"
imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? neocomplcache#close_popup() : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
"inoremap <expr><CR>  pumvisible() ? neocomplcache#close_popup() : "\<CR>"
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()
"inoremap <silent><CR>  <C-R>=neocomplcache#smart_close_popup()<CR><CR>


imap <expr><a-.>  pumvisible() ? "\<C-n>" : "\<c-x><c-u>"

let g:neocomplcache_dictionary_filetype_lists = {
            \ 'default' : '',
            \ 'javascript' : $HOME.'/.vim/dicts/javascript.dict',
            \ }


"au BufRead,BufNewFile *.user.js set ft=javascript
"au BufRead,BufNewFile *.user.js
"autocmd FileType javascript setlocal dict+=$HOME/.vim/dicts/javascript.dict



" Plugin key-mappings.
"imap <C-k>     <Plug>(neocomplcache_snippets_expand)
"imap <C-x>     <Plug>(neocomplcache_snippets_jump)
"smap <C-k>     <Plug>(neocomplcache_snippets_expand)
"inoremap <expr><C-g>     neocomplcache#undo_completion()
"inoremap <expr><C-l>     neocomplcache#complete_common_string()
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
"if !exists('g:neocomplcache_omni_patterns')
"let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.python='.'
" Recommended key-mappings.
"<CR>: close popup and save indent.
"inoremap <expr><CR>  (pumvisible() ? "\<C-y>":'') . "\<C-f>\<CR>X\<BS>"
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
"inoremap <expr><BS> pumvisible() ? neocomplcache#close_popup()."\<C-h>" : "\<C-h>"
"inoremap <expr><C-y>  neocomplcache#close_popup()
"inoremap <expr><C-e>  neocomplcache#cancel_popup()

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
"map <leader>f :MRU<CR>
map <M-r> :Mru<cr>

""""""""""""""""""""""""""""""
" => snipMate plugin
""""""""""""""""""""""""""""""
let g:snips_author = "mybeky"

""""""""""""""""""""""""""""""
" => FuzzyFinder
""""""""""""""""""""""""""""""
"let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
let g:fuf_learningLimit = 50
let g:fuf_modesDisable = [
        \   'dir', 'bookmark', 'tag', 'taggedfile',
        \   'jumplist', 'changelist', 'quickfix', 'line', 'help',
        \   'givenfile', 'givendir', 'givencmd',
        \   'callbackfile', 'callbackitem',
        \ ]
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|swp|pyc)$|(^|[/\\])\.(hg|git|bzr|svn)($|[/\\])'
let g:fuf_mrufile_maxItem = 50
let g:fuf_mrucmd_maxItem = 50
map <a-t> :FufFile<cr>
map <a-b> :FufBuffer<cr>

""""""""""""""""""""""""""""""
" => Command-T
""""""""""""""""""""""""""""""
"let g:CommandTMaxHeight = 15
set wildignore+=*.o,*.obj,.git,*.pyc,.svn,**/Cache/**,TMP/**,TEMP/**,Temporary\ Internet\ Files/**
"noremap <leader>j :CommandT<cr>
"noremap <leader>y :CommandTFlush<cr>
"map <a-t> :CommandT<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

"Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>
au BufRead,BufNewFile ~/buffer iab <buffer> xh1 ===========================================

map <leader>pp :setlocal paste!<cr>

map <leader>bb :cd ..<cr>

" TComment
map <c-/> <ESC>:TComment<CR>
map <a-/> <ESC>:TComment<CR>
map <m-/> <ESC>:TComment<CR>
map <leader>c <ESC>:TComment<CR>

vmap <c-/> :TComment<CR>
vmap <a-/> :TComment<CR>
vmap <m-/> :TComment<CR>

imap <a-h> <Left>
imap <a-j> <Down>
imap <a-k> <Up>
imap <a-l> <Right>
cmap <a-h> <Left>
cmap <a-j> <Down>
cmap <a-k> <Up>
cmap <a-l> <Right>


function! <SID>SynStack()
    if !exists("*synstack")
        return
    endif
    "echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"
endfunc
nmap <leader>h :call <SID>SynStack()<CR>

imap <C-b> <Left>
imap <C-n> <Down>
imap <C-p> <Up>
imap <C-f> <Right>
imap <C-v> <PageDown>
imap <M-v> <PageUp>
"imap <C-a> <Home>
imap <C-a> <esc><s-i>
imap <C-e> <End>
imap <C-q> <Esc>
imap <C-d> <Delete>
imap <a-f> <esc>ea


nnoremap <leader>r :call rainbow_parentheses#Toggle()<CR>
nnoremap <c-u> :GundoToggle<CR>

"let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
let g:indent_guides_color_change_percent = 5
let g:indent_guides_start_level = 2
"autocmd FileType python call indent_guides#enable()
nnoremap <leader>i :IndentGuidesToggle<CR>

nnoremap <leader>cc :call <SID>ToggleColorColumn()<cr>


if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

nnoremap <leader>ak :Ack<space>
nnoremap <leader>ap :Ack --python<space>
nnoremap <leader>ar :Ack --ruby<space>
nnoremap <leader>aj :Ack --js<space>
nnoremap <leader>ah :Ack --html<space>

" Tagbar
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_autofocus = 1
let g:tagbar_compact = 1
let g:tagbar_expand = 1
nmap <leader>l :TagbarOpenAutoClose<CR>

vmap s S

"nmap <tab> %

let $PYTHONPATH .= ":/Library/Python/2.7/site-packages"
"autocmd FileType python setlocal omnifunc=RopeCompleteFunc

nnoremap <leader>v V`]

nmap <silent> to :call append('.', '')<CR>j
nmap <silent> tO :call append(line('.')-1, '')<CR>k
nmap tp "+P

" EasyMotion
let g:EasyMotion_mapping_f = 'tf'
let g:EasyMotion_mapping_F = 'tF'
let g:EasyMotion_mapping_t = 'tt'
let g:EasyMotion_mapping_T = 'tT'
let g:EasyMotion_mapping_w = 'tw'
let g:EasyMotion_mapping_W = 'tW'
let g:EasyMotion_mapping_b = 'tb'
let g:EasyMotion_mapping_B = 'tB'
let g:EasyMotion_mapping_e = 'te'
let g:EasyMotion_mapping_E = 'tE'
let g:EasyMotion_mapping_ge = 'tge'
let g:EasyMotion_mapping_gE = 'tgE'
let g:EasyMotion_mapping_j = 'tj'
let g:EasyMotion_mapping_k = 'tk'

" LustyExplorer
nnoremap <M-b> :LustyBufferExplorer<CR>
nnoremap <M-g> :LustyBufferGrep<CR>
nnoremap <M-f> :LustyFilesystemExplorer<CR>
nnoremap <M-f> :LustyFilesystemExplorer<CR>
nnoremap <M-l> :LustyFilesystemExplorerFromHere<CR>
nnoremap <M-j> :LustyJuggler<CR>


command! XMLlint exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

function! YRRunAfterMaps()
    nnoremap <silent> Y :<C-U>YRYankCount 'y$'<CR>
endfunction

"map <C-c> <Esc>:CtrlPCurFile<CR>
let g:ctrlp_map = '<c-t>'
let g:ctrlp_by_filename = 1
let g:ctrlp_max_depth = 3
let g:ctrlp_match_window_reversed = 0

" let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
nnoremap <C-c> <Esc>:CtrlP<CR>
nnoremap <c-m> :CtrlPMixed<CR>
nnoremap <leader>f :CtrlPMRU<CR>
nnoremap <leader>b :CtrlPBuffer<CR>

nnoremap <F2> <ESC>:call Youdao()<cr>

let g:html_number_lines = 0

function! ToHtml(line1, line2)
  " generate and delete unneeded lines
  colo EspressoTutti
  exec a:line1.','.a:line2.'TOhtml'
  exec 'w! ~/Ramdisk/Caches/tohtml.html'
  exec '!open ~/Ramdisk/Caches/tohtml.html'
  exec 'bd!'
endfunction
command! -range=% ToHtml :call ToHtml(<line1>,<line2>)

au FileType javascript nmap <silent> <F4> <ESC>:%!js-beautify -i<CR>
au FileType javascript vmap <silent> <F4> <ESC>:'<,'>!js-beautify -i<CR>

au FileType xml,html,xhtml nmap <silent> <F4> <ESC>:XMLlint<CR>

"let g:ackprg = 'ag --nogroup --nocolor --column'

" seek.vim
let g:SeekKey = 'e'
let g:SeekBackKey = 'E' 
let g:seek_enable_jumps = 1
