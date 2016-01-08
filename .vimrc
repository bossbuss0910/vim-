set modelines=0		" CVE-2007-2438
"行番号の表示
set number

"色つける
syntax on

"vi互換をオフ
set nocompatible

"構文エラー
let g:syntastic_mode_map = {
	\ 'mode': 'active',
	\ 'active_filetypes': ['php', 'coffeescript', 'sh', 'vim'],
	\ 'passive_filetypes': ['python']
	\}

"新しい行のインデントを現在行と同じにする
set autoindent

"インクリメンタルサーチ設定
set incsearch

"タブ文字、行末など不可視文字を表示
"set list

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"シフト移動幅
"set shiftwidth=4

"行頭の余白内でTabを打ち込むと、'shiftwidth'の数だけインデントする
"set smartindent
" bundleのディレクトリ指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
" neobundleを読み込む
call neobundle#begin(expand('~/.vim/bundle/'))
" neobundle を管理
NeoBundleFetch 'Shougo/neobundle.vim'

" **** 導入するプラグイン ****
NeoBundle 'Flake8-vim'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'scrooloose/syntastic'

" neobundle を閉じる
call neobundle#end()

" インストールするか自動でチェック
NeoBundleCheck
" docstringは表示しない "
autocmd FileType python setlocal completeopt-=preview

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup
