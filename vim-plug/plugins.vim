" https://www.chrisatmachine.com/Neovim/01-vim-plug/
call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" File Explorer
Plug 'scrooloose/NERDTree'

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Autocomplete menu
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" Autocomplete menu 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" This is the bar that appears at the buttom.
Plug 'itchyny/lightline.vim'

" This is the color highlighter that appears over #001122
Plug 'norcalli/nvim-colorizer.lua'

call plug#end()

