if !&compatible
  set nocompatible
endif

"init.vimのリロード"
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
" dein自体の自動インストール
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
" プラグイン読み込み＆キャッシュ作成
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
" 不足プラグインの自動インストール
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

"NERDTreeの自動起動
autocmd VimEnter * execute 'NERDTree'
"隠しファイルをデフォルト表示
let NERDTreeShowHidden = 1
let g:NERDTreeLimitedSyntax = 1

"deoplete.nvimの設定
let g:deoplete#enable_at_startup = 1

"バックアップファイルをつくらない
set nobackup

"ignoreとsmartサーチ"
set ignorecase
set smartcase

"スワップファイルを作らない
set noswapfile

"ビープ音を無効化
set noerrorbells

"行番号
set number
set relativenumber

"カーソルライン
set cursorline

"行強調
set cursorcolumn

"カッコ強調
set showmatch

"オートインデント
set autoindent
set smartindent

"tab
set tabstop=2
set shiftwidth=2
set expandtab

"lightlineの設定
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

set t_Co=256  "screen が 256色"

:syntax on

"airline id set"
let g:molokai_original = 1
let g:rehash256 = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
nmap <C-q> <Plug>AirlineSelectPrevTab
nmap <C-> <Plug>AirlineSelectNextTab
let g:airline#extensions#tabline#buffer_idx_mode = 1

set ruler "カーソルが何行目の何列目に置かれているかを表示"

set clipboard=unnamed "neovim以外での場所でもコピぺができる"

set encoding=UTF-8 "エンコーディングの形式をUTF-8に固定"

set hlsearch
nnoremap <ESC><ESC> :nohlsearc<CR> "検索ハイライトと取り消し"

set shellslash

set wrap "ウィンドウより長い行は折り返し"

set list "空文字の可視化"

nnoremap <silent> <C-a> :wq<CR> "保存して終了をctl+aでできる"

nnoremap <silent> <C-s> :w<CR> "保存するをctl+sでできる"

nnoremap <silent> <C-x> :q<CR> "停止をctl+xでできる"

nnoremap <silent> <C-d> :bwipe<CR> "タブをctl+qで消せる"

nnoremap <silent> <C-g> :sv<CR> "縦にウィンドウを増やす"

"ctl＋fでスクロールさせる時の可読性をあげました"
set scrolloff=5
