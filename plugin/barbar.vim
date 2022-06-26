" https://github.com/romgrk/barbar.nvim

" Move to previous/next
nnoremap <silent>    <A-Left> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-Right> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <A-Down> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <A-Up> <Cmd>BufferMoveNext<CR>

" Pin/unpin buffer
nnoremap <silent>    <A-z> <Cmd>BufferPin<CR>
" Close buffer
nnoremap <silent>    <A-x> <Cmd>BufferClose<CR>

" NOTE: If barbar's option dict isn't created yet, create it
let bufferline = get(g:, 'bufferline', {})

" Enable/disable auto-hiding the tab bar when there is a single buffer
let bufferline.auto_hide = v:true

let bufferline.icon_pinned = '📍'


