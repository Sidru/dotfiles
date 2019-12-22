" Use jk for exit the insert mode 
inoremap jk <ESC>

nnoremap <F2> :let &cc = &cc == '' ? '100' : ''<CR>

" Toggle the searching highlight
let hlstate=0
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>
nnoremap <F8> :TagbarToggle<CR>

" Use Ctrl+n to Toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

" Use Ctrl+p to search with fzf
nnoremap <C-p> :FZF<CR>

" Use \+a to search with The Silver Searcher bzw. AG/ACK
nnoremap <Leader>a :Ack!<Space>

" Jump to the tag
noremap <S-h> <C-T>
noremap <S-l> <C-]>

" Move through the split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable arrow movement and resize instead
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Enable folding with the spacebar
nnoremap <space> za


" Copy and Past to/from Nvim/System clipboard
" For X11-based systems (ie. Linux and most other UNIX-like systems) there are two clipboards which are independent of each other:
" PRIMARY - This is copy-on-select, and can be pasted with the middle mouse button.
" CLIPBOARD - This is copied with (usually) ^C, and pasted with ^V (It's like MS Windows).
" Vim has two special registers corresponding to these clipboards:
" * uses PRIMARY; mnemonic: Star is Select (for copy-on-select)
" + uses CLIPBOARD; mnemonic: CTRL PLUS C (for the common keybind)
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" Toggle de ALE (Asynchronous Lint Engine) 
nnoremap <Leader>a :ALEToggle<CR>


nnoremap \ :Ack!<SPACE>

" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR> 


" CSCOPE
" To find callers of the function name currently under the cursor, 
" Go to the base directory and run "cscope -Rb"
" :cs add cscope.out
" :cs find c my_func
function! Csc()
  cscope find c <cword>
  copen
endfunction
command! Csc call Csc()
