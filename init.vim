" Load vim-plug
source $HOME/.config/nvim/vim-plug/plugins.vim

" Load the theme
source $HOME/.config/nvim/themes/normal.vim

" Need to ensure that mason starts before mason-lspconfig and that
" lspconfig starts last, so force the first two to start first.
lua require("mason").setup()
lua require("mason-lspconfig").setup()

syntax on

" Enable tab spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent

" Enable autocomplete menu features
set completeopt=menu,menuone,noselect

" Enable line numbers
set number

set showcmd

filetype indent on

set wildmenu

set showmatch

set incsearch
set hlsearch

" Enable the hidden which lets you switch buffers
set hidden

" Enable new splits to appear at the bottom and right instead
" of other way around.
set splitbelow splitright

" Enable mouse clicking
set mouse+=a

" Search down into subfolders. Provides tab-completion
" for all file-related tasks.
set path+=**

" https://ejmastnak.github.io/tutorials/vim-latex/ftplugin.html 
filetype on             " enable filetype detection
filetype plugin on      " load file-specific plugins
filetype indent on      " load file-specific indentation

" ==== Mappings

" Remap block select to Alt-v
noremap <A-v> <C-v>

" Copy/Pasting
noremap <C-c> "+y
noremap <C-v> "+P

" Saving
noremap <C-s> <Cmd>w<CR>

" Remap switching splits to make them simpler.
" Instead of C+w C+x to switch, now C+w x
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Remap resizing splits
noremap <silent> <C-Left> :vertical resize -3<CR>
noremap <silent> <C-Right> :vertical resize +3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Commands
map <Leader>tn :vnew term://zsh<CR>
map <Leader>tt :term<CR>

" Map switching vertical split to horizontal and horizontal split to
" vertical since the shortcut is pretty complicated.
map <Leader>rr <C-w>t<C-w>H
map <Leader>re <C-w>t<C-w>K

" ==== Plugin Mappings

map <Leader>nt :NERDTree<CR>


" ==== User Defined Functions

" Joins lines that are in a paragraph to form one line.
function! JoinLines() abort
   let save_pos = getpos(".")
   " Whaat this does is it goes to the top of the paragraph, then goes down
   " one line to enter the paragraph. Then it enters visual mode, selects the
   " paragraph by going to the end of it and also one line up (so we don't
   " select the line underneath as well, then it goes to the end of the line.
   " Finally it causes all the lines to be made into 1.
   normal! {jv}k$J
endfunction

" Joins lines together then wraps them effectively implementing the Rewrap
" function of VSCode in vim.
function! Wrap() abort
   call JoinLines()
   " Now perform the wrap
   " Do :help gq to see that it formats the text using textwidth
   normal! {jv}k$gq
endfunction

" Wraps a line to be less than 80 columns.
function! WrapFile() abort
   " Save the position of the cursor because normal resets it.
   let save_pos = getpos(".")
   " Wrap the text
   :%!fmt -80 -s
   call setpos('.', save_pos)
   echo "Wrapped paragraph"
endfunction

" ==== User Defined Commands
command Wrap call Wrap()
command ReloadConfig source $MYVIMRC


