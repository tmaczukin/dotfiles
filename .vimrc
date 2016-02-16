set nocompatible

syntax on
filetype on
filetype indent on

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

" lotcfile identification
au BufNewFile,BufRead lotcfile set filetype=ruby
au BufNewFile,BufRead lotcfile.example set filetype=ruby

" coffee identification
au BufNewFile,BufRead *.coffee set filetype=coffee

" Spelling
set spelllang=pl,en


nnoremap j gj
nnoremap k gk

nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Left> :tabprev<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-l> :NERDTreeToggle<CR>

nnoremap <C-e> :e!<CR>
nnoremap <C-h> :noh<CR>
nnoremap <C-d> :diffupdate<CR>

nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

let NERDTreeMapOpenInTab='\r'
let NERDTreeShowHidden=1

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1

" Vundle: git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"         vim +PluginInstall +qall
set rtp+=~/.vim/bundle/Vundle.vim

" Plugins
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'fatih/vim-go'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'airblade/vim-gitgutter'

Plugin 'statline'

call vundle#end()
filetype plugin indent on

" show git status with tig (ncurses git client)
function! s:tig_status()
  cd `driller --scm-root %`
  !tig status
endfunction

map <C-G> :TigStatus<CR><CR>
command! TigStatus call s:tig_status()

" open bash
function! s:open_bash()
  !bash
endfunction

map <C-B> :OpenBash<CR><CR>
command! OpenBash call s:open_bash()
