ugroup vimrc
  autocmd!
augroup END

autocmd vimrc FileType dosbatch set fileencoding=sjis
set number
set nowrap
set hlsearch
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac

" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;


syntax enable
"colorscheme darkblue
set cursorline
" set cursorcolumn
set relativenumber
set nobackup
set noswapfile

" vspを右で開く
set splitbelow
set splitright

autocmd QuickFixCmdPost vimgrep cwindow
"下記のとおりにすると:grepや:Ggrepでも自動的にquickfix-windowを開くようになる。
autocmd QuickFixCmdPost *grep* cwindow

command! Greet call s:greet()

function! s:greet()
    echo 'Hello'
endfunction

" ctrl+s で保存
" Add keyboard shortcuts
nnoremap <C-T> :tabnew<CR>:e .<CR>
nnoremap <F12> :tabonly<CR>
nnoremap <F2> :vsp .<CR>
nnoremap <F3> :sp .<CR>
nnoremap <silent> <Space> gt
nnoremap <silent> <S-Space> gT
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>

" ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
