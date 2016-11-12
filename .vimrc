set nocompatible
filetype off

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline/vim-airline'
Plugin 'rust-lang/rust.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'godlygeek/csapprox'
Plugin 'ararslan/license-to-vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Nopik/vim-nerdtree-direnter'
Plugin 'toyamarinyon/vim-swift'
Plugin 'cheddar-lang/cheddar.vim'
Plugin 'beeryardtech/let-modeline.vim'

call vundle#end()
filetype plugin indent on

set colorcolumn=80
set clipboard=unnamed

" Coloring / Themes
" let g:solarized_termcolors=256
syntax on
set background=dark
colorscheme monokai
let g:airline_theme='powerlineish'
filetype plugin on

" Plugin Specific Config
let g:license_author = 'E-Hern Lee'
let g:license_email = 'ehern.lee@gmail.com'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Spacing
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

" Syntax Highlighitng
autocmd BufRead *.es6 set ft=javascript
autocmd BufRead *.cdr set ft=javascript

" Various settings
set nu
set laststatus=2
set clipboard=unnamed
set mouse=a
set autoindent
set fileencoding=utf8
set guifont=Meslo\ LG\ M\ for\ Powerline:h12
au FocusLost * silent! wa

set backspace=indent,eol,start

" Remap Buffer switching
noremap <silent> fr :bn<cr>
noremap <silent> fR :bp<cr>
noremap <silent> fd :bw<cr> 

" Remap insert mode jumping
inoremap <C-e> <C-o>$
inoremap <C-l> <C-o>o

" Remap undo
inoremap <C-z> <esc>:u<cr>i
nnoremap <C-z> <esc>:u<cr>i

" Remap :noh
nnoremap <Bslash> :noh<cr>

" Remap p to not copy
xnoremap p "_dP

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
