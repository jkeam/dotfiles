" size of tab
set tabstop=4

" size of indent
set shiftwidth=2

" spaces instead of tabs
set expandtab

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'vim-airline/vim-airline' " cooler status bar for vi
Plugin 'vim-airline/vim-airline-themes' " themes for cool vi status bar
Plugin 'danro/rename.vim' " rename current file
Plugin 'tpope/vim-surround'  " surround text object with stuff like brackets
Plugin 'vim-scripts/tComment' " easy commenting
Plugin 'rizzatti/dash.vim'    " integrate dash
Plugin 'scrooloose/syntastic' " linter
Plugin 'christoomey/vim-tmux-navigator' " VIM and Tmux integration
Plugin 'mileszs/ack.vim' " Integration with ack

" colorschemes
Plugin 'chriskempson/base16-vim'

" JavaScript plugins
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'

" Rails plugins
Plugin 'tpope/vim-bundler'    " bundler
Plugin 'tpope/vim-rails'      " rails
Plugin 'tpope/vim-dispatch'   " async process
Plugin 'janko-m/vim-test'     " test runner

" Golang plugins
Plugin 'fatih/vim-go'

" Plugin configuration
let g:airline#extensions#tabline#enabled = 1  " turn on airline

" Configure syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set t_Co=256

" Access colors present in 256 colorspace
let base16colorspace=256

set background=dark
colorscheme base16-monokai
" if unable to find monokai, can use default-dark
" colorscheme base16-default-dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Ignore for ctrl-p (fuzzy find files)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Call silver_searcher (ag command, like grep/ack, override Ack)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
