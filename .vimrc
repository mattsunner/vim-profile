set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
 Plugin 'gmarik/Vundle.vim'
 Plugin 'tmhedberg/SimpylFold'
 Plugin 'vim-scripts/indentpython.vim'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'nvie/vim-flake8'
 Plugin 'scrooloose/nerdtree'
 Plugin 'jistr/vim-nerdtree-tabs'
 Plugin 'jiangmiao/auto-pairs'
 Plugin 'fatih/vim-go'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8

nmap <F6> :NERDTreeToggle<CR>

au BufWritePost *.go !gofmt -w %

set nu

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

syntax enable
set background=dark
colorscheme solarized
