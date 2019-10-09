"行番号
set number
set relativenumber

"バックアップファイルをつくらない
set nobackup

"ignoreとsmartサーチ"
set ignorecase
set smartcase

"スワップファイルを作らない
set noswapfile

"ビープ音を無効化
set noerrorbells

"カッコ強調
set showmatch

"オートインデント
set autoindent
set smartindent

"tab
set tabstop=2
set shiftwidth=2
set expandtab
set softtabstop=2

"lightlineの設定
set laststatus=2 " ステータスラインを常に表示
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
set ruler " ステータスラインの右側にカーソルの現在位置を表示する

set t_Co=256  "screen が 256色"

:syntax on

set clipboard=unnamed "neovim以外での場所でもコピぺができる"

set encoding=UTF-8 "エンコーディングの形式をUTF-8に固定"

set hlsearch

set shellslash

set wrap "ウィンドウより長い行は折り返し"

set list "空文字の可視化"

set ruler "カーソルの位置表示"

set cursorline "行番号のハイライト"

"ctl＋fでスクロールさせる時の可読性をあげました"
set scrolloff=5
