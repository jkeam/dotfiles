" CVE-2019-12735
set modelines=0
set nomodeline

" encoding
set encoding=UTF-8

" size of tab
set tabstop=4

" size of indent
set shiftwidth=2

" spaces instead of tabs
set expandtab

" turn on line numbers
set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set this to your rtp location
" set rtp+=/usr/local/bin/fzf

call plug#begin()
" ag
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim' " faster fuzzy find files
" Plug 'mileszs/ack.vim' " integration with ack
" tmux
" Plug 'benmills/vimux' " tmux integration
" Plug 'christoomey/vim-tmux-navigator' " VIM and Tmux integration
Plug 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plug 'tpope/vim-fugitive' " the ultimate git helper
Plug 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plug 'tpope/vim-eunuch'         " shell commands
Plug 'tpope/vim-surround'  " surround text object with stuff like brackets
Plug 'vim-airline/vim-airline' " cooler status bar for vi
Plug 'vim-airline/vim-airline-themes' " themes for cool vi status bar
Plug 'vim-scripts/tComment' " easy commenting
Plug 'chriskempson/base16-vim' " colorschemes
Plug 'sickill/vim-monokai'  " colorscheme
Plug 'airblade/vim-gitgutter' " git gutter
" Plug 'ryanoasis/vim-devicons'   " nerdtree icons - nerd fonts
" Plug 'mhinz/vim-startify'  " cool start screens

" Plug configuration
let g:airline#extensions#tabline#enabled = 1  " turn on airline
let g:airline_theme='bubblegum'

call plug#end()            " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on

set t_Co=256

" Access colors present in 256 colorspace
let base16colorspace=256

set background=dark
colorscheme monokai
" if unable to find monokai, can use default-dark
" or can use base16 theme below
" colorscheme base16-default-dark

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom Ignore for ctrl-p (fuzzy find files)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Call silver_searcher (ag command, like grep/ack, override Ack)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if executable('ag')
  " let g:ackprg = 'ag --vimgrep'
" endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeNodeDelimiter = "\u00a0"
let NERDTreeShowHidden=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-o> :NERDTreeToggle<CR>
map ; :Files<CR>
" https://www.reddit.com/r/neovim/comments/petq61/neovim_060_y_not_yanking_line_but_to_end_of_line/
nnoremap Y Y

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Automatically treat .es6 extension files as javascript
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.es6 setfiletype javascript
autocmd BufRead,BufNewFile Vagrantfile setfiletype ruby

