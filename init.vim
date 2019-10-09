if !&compatible
  set nocompatible
endif

"init.vimのリロード"
augroup MyAutoCmd
  autocmd!
augroup END

" dein settings {{{
let s:cache_home = empty($XDG_CACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir .",". &runtimepath
let s:toml_file = fnamemodify(expand('<sfile>'), ':h').'/dein.toml'
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file)
  call dein#end()
  call dein#save_state()
endif
if has('vim_starting') && dein#check_install()
  call dein#install()
endif
" }}}

"隠しファイルをデフォルト表示"
let NERDTreeShowHidden = 1
let g:NERDTreeLimitedSyntax = 1

"vim airline id set"
let g:molokai_original = 1
let g:rehash256 = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
nmap <C-q> <Plug>AirlineSelectPrevTab
nmap <C-> <Plug>AirlineSelectNextTab
let g:airline#extensions#tabline#buffer_idx_mode = 1

nnoremap <ESC><ESC> :nohlsearc<CR> "検索ハイライトと取り消し"

nnoremap <silent> <C-a> :wq<CR> "保存して終了をctl+aでできる"

nnoremap <silent> <C-s> :w<CR> "保存するをctl+sでできる"

nnoremap <silent> <C-x> :q<CR> "停止をctl+xでできる"

nnoremap <silent> <C-d> :bwipe<CR> "タブをctl+qで消せる"

nnoremap <silent> <C-g> :sv<CR> "縦にウィンドウを増やす"

nnoremap <silent> <C-h> :vs<CR> "横にウィンドウを増やす"

"ale settings"
let g:ale_lint_on_text_changed = 1

" 表示に関する設定
let g:ale_sign_column_always = 1
let g:ale_sign_error = ''
let g:ale_sign_warning = ''
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'css': ['stylelint'],
\}
" Ctrl + kで次の指摘へ、Ctrl + jで前の指摘へ移動
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

runtime! ./vasic.vim
