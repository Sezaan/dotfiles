call plug#begin('~/.vim/plugged')

" Plugins

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'scrooloose/nerdtree'
" Plug 'tsony-tsonev/Gnerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
" Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'

" file manager
Plug 'preservim/nerdtree'

" fuzyy search

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" icons
Plug 'ryanoasis/vim-devicons'

" emmet
Plug 'mattn/emmet-vim'

Plug 'mhinz/vim-startify'

" carbon - take/make screenshot
Plug 'kristijanhusak/vim-carbon-now-sh'

" better c++11/14/17 highlight
Plug 'octol/vim-cpp-enhanced-highlight'

" Syntax highlighter for elixir
Plug 'elixir-editors/vim-elixir'

"Auto Completion for elixir
Plug 'slashmili/alchemist.vim'

" Plugin 'neoclide/coc.nvim'
" Plug 'neoclide/coc.nvim'

" Color Schemes
Plug 'morhetz/gruvbox'

call plug#end()

" setting up vundle
" execute pathogen#infect()

filetype plugin indent on

" syntax on
syntax on
" set termguicolors

let g:gruvbox_italic=1
let g:gruvbox_contrast_dark = 'soft'

" setting gruvbox
" autocmd vimenter * colorscheme gruvbox

" setting background dark

" setting general settings
set background=dark
set number
set tabstop=2
set shiftwidth=2
set nu
set nobackup
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set incsearch

" This enables relative numberring,
" We can easily navigate to anyline with this feature
set relativenumber

set backspace=indent,eol,start

" not forgetting unsaved changes
set hidden

" making search not case sensitive
set ignorecase
set smartcase


" Unbinding Q key
nmap Q <Nop>

set noerrorbells visualbell t_vb=

" Enabling mouse support
set mouse+=a

nnoremap <Left>   :echoe "Use h"<CR>
nnoremap <Right>  :echoe "Use l"<CR>
nnoremap <Up>     :echoe "Use k"<CR>
nnoremap <Down>   :echoe "Use j"<CR>


set termguicolors
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" disble netrw

"setting up theme
colorscheme gruvbox


" let g:netrw_browse_split = 2
" let g:netrw_banner = 0
" let g:netrw_winsize = 25

" elixir file type setup
autocmd FileType elixir let b:coc_root_patterns = ['mix.exs']

" Setting up project root for elixir
let g:LanguageClient_rootMarkers = {
      \ 'elixir' : ['mix.exs'],
      \ }

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeGitStatusLogLevel = 3
