" https://www.chrisatmachine.com/Neovim/01-vim-plug/
call plug#begin('~/.config/nvim/autoload/plugged')

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" File Explorer
Plug 'scrooloose/NERDTree'

" Tabs
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" Auto pairs for '(' '[' '{'
Plug 'jiangmiao/auto-pairs'

" This is the bar that appears at the buttom.
Plug 'itchyny/lightline.vim'

" Auto complete popup
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" Snippets for autocomplete
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" This is the color highlighter that appears over colors 
" #000000 #FFFFFF #FF0000 #00FF00 #0000FF
Plug 'norcalli/nvim-colorizer.lua'

" Language Server Processors
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'


call plug#end()


