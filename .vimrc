syntax on
colorscheme elflord
filetype plugin indent on

" Leaderキーをスペースに変更
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>

set clipboard+=unnamed
set clipboard=unnamed
set expandtab
set tabstop=4
set shiftwidth=4
set directory=$HOME/.vim/swap " swapファイルの配置場所指定
set foldmethod=indent " メソッドを折りたたむ
set wildmenu
set hlsearch

set undofile
if !isdirectory(expand("$HOME/.vim/undodir"))
    call mkdir(expand("$HOME/.vim/undodir"), "p")
endif
set undodir=$HOME/.vim/undofile

" ノーマルモードの時にENTERで改行
nnoremap <silent> <CR> o<ESC>

packloadall " すべてのプラグインをロードする
silent! halptags ALL "すべてのプラグイン用にヘルプファイルをロードする

" Ctrl + h,j,k,l でウィンドウを移動させるマッピング
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

"セミコロンでコマンドモードに入れるようにする
noremap ; :

" 矢印キーを無効化
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" :Bd でウィンドウは閉じずにバッファだけを閉じる
command! Bd :bp | :sp | :bn | :bd

" 新しいファイルを開くときには折りたたみを開く
autocmd BufRead * normal zR

" フォントの設定
set guifont=Cica:h16
set printfont=Cica:h12
set ambiwidth=double
