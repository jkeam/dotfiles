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

" Configure ALE - must be done before ALE is loaded
let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_lint_on_enter = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linter_aliases = {'jsx': ['css', 'javascript']}
let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
" ruby
let g:ale_ruby_rubocop_executable = '~/.gem/ruby/2.6.1/bin/rubocop'
let g:ale_ruby_rubocop_options = '--force-exclusion'
let g:ale_ruby_ruby_executable = '~/.rubies/ruby-2.6.1/bin/ruby'

" let g:ale_ruby_brakeman_options = ''
" let g:ale_ruby_reek_show_context = 0
" let g:ale_ruby_reek_show_wiki_link = 0

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['standard', 'eslint'],
\   'rust': ['rustc'],
\   'go': ['gofmt', 'golint', 'go vet'],
\}

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
Plugin 'tpope/vim-eunuch'         " shell commands
Plugin 'tpope/vim-surround'  " surround text object with stuff like brackets
Plugin 'vim-airline/vim-airline' " cooler status bar for vi
Plugin 'vim-airline/vim-airline-themes' " themes for cool vi status bar
Plugin 'vim-scripts/tComment' " easy commenting
Plugin 'rizzatti/dash.vim'    " integrate dash
Plugin 'w0rp/ale' " linter
Plugin 'christoomey/vim-tmux-navigator' " VIM and Tmux integration
Plugin 'mileszs/ack.vim' " integration with ack
Plugin 'chriskempson/base16-vim' " colorschemes
Plugin 'sickill/vim-monokai'  " colorscheme
Plugin 'airblade/vim-gitgutter' " git gutter
Plugin 'terryma/vim-multiple-cursors'  " multi cursors

" JavaScript plugins
Plugin 'othree/yajs.vim'

" Rails plugins
Plugin 'tpope/vim-bundler'    " bundler
Plugin 'tpope/vim-rails'      " rails
Plugin 'tpope/vim-dispatch'   " async process
Plugin 'janko-m/vim-test'     " test runner

" Golang plugins
Plugin 'fatih/vim-go'

" Plugin configuration
let g:airline#extensions#tabline#enabled = 1  " turn on airline
let g:airline_theme='bubblegum'

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
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeNodeDelimiter = "\u00a0"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-o> :NERDTreeToggle<CR>
