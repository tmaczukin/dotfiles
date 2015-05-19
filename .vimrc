set nocompatible

syntax on
filetype on
filetype indent on
filetype plugin on

set background=dark
set showmatch
set hidden
set mouse=a
set number
set ruler
set wrapscan
set textwidth=120
set colorcolumn=+1
set autoindent
set title
set nobackup
set noswapfile

" Highlight things that we find with the search
set hlsearch

" Who wants an 8 character tab?  Not me!
set shiftwidth=4
set softtabstop=4

" Spaces are better than a tab character
set expandtab
set smarttab

" but no in makefiles
autocmd FileType make setlocal noexpandtab
autocmd FileType make setlocal shiftwidth=8
autocmd FileType make setlocal softtabstop=8

" and in ruby files i want 2 spaces
autocmd FileType ruby setlocal shiftwidth=2
autocmd FileType ruby setlocal tabstop=2

nnoremap j gj
nnoremap k gk

nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprev<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-l> :NERDTreeToggle<CR>

nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let NERDTreeMapOpenInTab='\r'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1

" Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
Plugin 'scrooloose/nerdtree'
" git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
Plugin 'fatih/vim-go'
" git clone https://github.com/vim-ruby/vim-ruby ~/.vim/bundle/vim-ruby
Plugin 'vim-ruby/vim-ruby'
" git clone https://github.com/tpope/vim-haml ~/.vim/bundle/vim-haml
Plugin 'tpope/vim-haml'
" git clone https://github.com/tpope/vim-bundler ~/.vim/bundle/vim-bundler
Plugin 'tpope/vim-bundler'
" git clone https://github.com/tpope/vim-rails ~/.vim/bundle/vim-rails
Plugin 'tpope/vim-rails'

call vundle#end()
