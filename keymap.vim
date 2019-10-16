nnoremap <ESC><ESC> :nohlsearc<CR> "検索ハイライトと取り消し"

nnoremap <silent> <C-a> :wq<CR> "保存して終了をctl+aでできる"

nnoremap <silent> <C-s> :w<CR> "保存するをctl+sでできる"

nnoremap <silent> <C-x> :q<CR> "停止をctl+xでできる"

nnoremap <silent> <C-d> :bwipe<CR> "タブをctl+qで消せる"

nnoremap <silent> <C-g> :sv<CR> "縦にウィンドウを増やす"

nnoremap <silent> <C-h> :vs<CR> "横にウィンドウを増やす"

" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nnoremap <silent> <C-k> <Plug>(ale_previous_wrap)
nnoremap <silent> <C-j> <Plug>(ale_next_wrap)
