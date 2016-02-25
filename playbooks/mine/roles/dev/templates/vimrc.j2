" stop default plugin
let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1

"新しい行のインデントを現在行と同じにする
set autoindent
"バックアップファイルを作るディレクトリ
set backupdir=$HOME/.vimbackup
"スワップファイル用のディレクトリ
set directory=$HOME/.vimbackup
"ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set browsedir=buffer
"クリップボードを連携
set clipboard=unnamedplus
"Vi互換をオフ
"set nocompatible
"タブの代わりに空白文字を挿入する
set expandtab
"変更中のファイルでも、保存しないで他のファイルを表示
set hidden
"インクリメンタルサーチを行う
set incsearch
"タブ文字、行末など不可視文字を表示する
set list
"listで表示される文字のフォーマットを指定する
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:%
"行番号を表示する
set number
"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch
"検索時に大文字を含んでいたら大/小を区別
set smartcase
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab
"シフト移動幅
set shiftwidth=2
"ファイル内の <Tab> が対応する空白の数
set tabstop=2
" set php indent
au BufNewFile,BufRead *.php set expandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.ctp set expandtab tabstop=4 shiftwidth=4
" highlight cursorline
set cursorline
"カーソルを行頭、行末で止まらないようにする
"set whichwrap=b,s,h,l,<,>,[,]
"検索をファイルの先頭へループしない
set nowrapscan
"statuslineに表示
set statusline+=%{fugitive#statusline()}\ %<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set laststatus=2
"highlight
set hls
syntax enable
" change current directory auto
set autochdir

"windowsのvimfilesを.vimに変更する
if has('win32')
  set runtimepath^=$HOME/.vim
  set runtimepath+=$HOME/.vim/after
endif

"encodings
set encoding=utf-8
set fileencodings=utf-8,cp932
set fileformats=unix,dos,mac

" 全角スペースの表示
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
endfunction
if has("syntax")
  augroup ZenkakuSpace
    autocmd!
    autocmd ColorScheme * call ZenkakuSpace()
    autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
  augroup END
  call ZenkakuSpace()
endif

" 挿入モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap {} {}<Left>
inoremap [] []<Left>
inoremap () ()<Left>
inoremap "" ""<Left>
inoremap '' ''<Left>
inoremap <> <><Left>

" 分割画面移動
nmap sj <C-W>j
nmap sk <C-W>k
nmap sh <C-w>h
nmap sl <C-w>l

"連続コピペ
vnoremap <silent> <C-p> "0p<CR>

"tag jump
nnoremap <C-]> g<C-]>

" neobundle -->
if has('vim_starting')
 if &compatible
   set nocompatible               " Be iMproved
 endif

 " Required:
 set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'taku-o/vim-toggle'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'thinca/vim-ref'
NeoBundle 'taka84u9/vim-ref-ri'

NeoBundle 'mfumi/ref-dicts-en'
NeoBundle 'tyru/vim-altercmd'

NeoBundle 'eshion/vim-sync'
NeoBundle 'tpope/vim-surround'

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
"NeoBundleCheck
" <-- neobundle

syntax enable
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" set background=light
" colorscheme desert
" try
"   colorscheme solarized
" catch
" endtry

if (exists('+colorcolumn'))
  set colorcolumn=80
  highlight ColorColumn ctermbg=9
endif

" neocomplete
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_ignore_case = 1
let g:neocomplete#enable_smart_case = 1
if !exists('g:neocomplete#keyword_patterns')
  let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns._ = '\h\w*'

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"

" warn typo save
autocmd BufWriteCmd :*,*[,*] call s:write_check_typo(expand('<afile>'))
function! s:write_check_typo(file)
  let prompt = "possible typo: really want to write to '" . a:file . "'?(y/n):"
  let input = input(prompt)
  if input =~? '^y\(es\)\=$'
    execute 'write'.(v:cmdbang ? '!' : '') a:file
  endif
endfunction

"unite
let g:unite_enable_start_insert=0
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=gray ctermbg=0
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=236

" vim-ref
let g:ref_phpmanual_path = $HOME . '/.vim/doc/php-chunked-xhtml'
let g:ref_refe_cmd = $HOME . '/.bitclust'

" ref dict en
let g:ref_source_webdict_sites = {
\   'je': {
\     'url': 'http://dictionary.infoseek.ne.jp/jeword/%s',
\   },
\   'ej': {
\     'url': 'http://dictionary.infoseek.ne.jp/ejword/%s',
\   },
\ }

" デフォルトサイト
let g:ref_source_webdict_sites.default = 'ej'

" 出力に対するフィルタ
" 最初の数行を削除
function! g:ref_source_webdict_sites.je.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction

function! g:ref_source_webdict_sites.ej.filter(output)
  return join(split(a:output, "\n")[15 :], "\n")
endfunction

call altercmd#load()
CAlterCommand ej Ref webdict ej
CAlterCommand je Ref webdict je

" vim-sync
" nnoremap <C-I> <ESC>:call SyncUploadFile()<CR>

