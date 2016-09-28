set nocompatible              " be iMproved, required
filetype off                  " required

set t_Co=256

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

set wildignore+=*/target/*,*.class

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Auto brackets paring
Plugin 'jiangmiao/auto-pairs'

" snippets
Plugin 'SirVer/ultisnips'

Plugin 'jacoborus/tender'
Plugin 'derekwyatt/vim-scala'
Plugin 'ctrlpvim/ctrlp.vim'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'endel/vim-github-colorscheme'
Plugin 'morhetz/gruvbox'
Plugin 'goatslacker/mango.vim'
Plugin 'fugalh/desert.vim'
Plugin 'jtai/vim-womprat'
Plugin 'zeis/vim-kolor'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on    " required

syntax enable
set background=dark
" let g:solarized_termcolors=256
colorscheme gruvbox
set background=dark

" folding
set foldmethod=manual   "fold manually
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

nnoremap <S-Left> :tabprevious<CR>
nnoremap <S-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

" save sessions
nnoremap <C-s> :wa<CR>:mksession! ~/session.vim<CR>
nnoremap <C-x> :wa<CR>:mksession! ~/session.vim<CR>:qa<CR>

nnoremap <C-y> kyyp

let mapleader = " "

nnoremap + zo
nnoremap _ vi}zf

set viewoptions=cursor,folds,slash,unix 

" snippet
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

let g:indentLine_enabled = 1

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

set clipboard=unnamed

vmap <C-c> "+y


