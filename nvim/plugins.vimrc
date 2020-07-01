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
Plug 'skywind3000/asyncrun.vim'
Plug 'Yggdroot/indentLine'
Plug 'vobornik/vim-mql4'

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" The Silver Searcher bzw. Ag/Ack
if executable('ag')
    " Use ag over grep
    set grepprg=ag\ --nogroup\ --nocolor
    " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    let g:ackprg = 'ag --vimgrep'
endif

" ALE
let g:ale_enabled = 0
" Write this in your vimrc file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0
let g:ale_open_list = 1

" GutenTags
" Generate tag files for other types
"let g:gutentags_project_root = ['Makefile’, '.git']
"let g:gutentags_cache_dir = expand('~/.cache/vim/ctags/')


" Quick run via <F5>
function! s:compile_and_run()
    exec 'w'
    if &filetype == 'c'
        exec "AsyncRun! gcc % -o %<; time ./%<"
    elseif &filetype == 'cpp'
       exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
    elseif &filetype == 'java'
       exec "AsyncRun! javac %; time java %<"
    elseif &filetype == 'sh'
       exec "AsyncRun! time bash %"
    elseif &filetype == 'python'
       exec "AsyncRun! time python %"
    endif
endfunction
" open quickfix automatically
let g:asyncrun_open = 15
