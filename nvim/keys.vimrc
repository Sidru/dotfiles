" Use jk for exit the insert mode 
:imap jk <ESC>

" Toggle the searching highlight
let hlstate=0
nnoremap <F4> :if (hlstate == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=1-hlstate<cr>

" Use Ctrl+n to Toggle NerdTree
map <C-n> :NERDTreeToggle<CR>

" Use Ctrl+p to search with fzf
nnoremap <C-p> :FZF<CR>

" Use \+a to search with The Silver Searcher bzw. AG/ACK
nnoremap <Leader>a :Ack!<Space>

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
