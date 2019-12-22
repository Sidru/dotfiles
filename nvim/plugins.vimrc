" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'mileszs/ack.vim'
Plug 'dense-analysis/ale' " ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) in NeoVim 0.2.0+ and Vim 8 while you edit your text files, and acts as a Vim Language Server Protocol client.
Plug 'qpkorr/vim-bufkill' " Plugin to delete the buffer and keep the window intact
Plug 'vobornik/vim-mql4' " Syntax fuer MQL4
Plug 'justinmk/vim-syntax-extra' 
Plug 'ludovicchabant/vim-gutentags' 
Plug 'majutsushi/tagbar'


" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" The Silver Searcher bzw. Ag/Ack
if executable('ag')
		let g:ackprg = 'ag --vimgrep'
endif

" ALE
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 0

" GutenTags
" Generate tag files for other types
"let g:gutentags_project_root = ['Makefile’, '.git']
"let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')
