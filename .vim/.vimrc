" creating vim file was done using this blog:
" https://dougblack.io/words/a-good-vimrc.html


let mapleader = ','     " leader is a comma


syntax enable " enable syntax processing
"colorscheme Oceanic "desert change colour scheme
"color dracula
"color challenger_deep
"color base16-nord
if has("gui_running")
    colorscheme base16-railcasts
elseif has("gui_macvim")
    let macvim_skip_colorscheme=1
    colorscheme base16-railcasts
else
    " colorscheme base16-railscasts
endif

filetype plugin indent on

set tabstop=4 " number of existing spaces per TAB
set softtabstop=4  " number of spaces in a tab when editing
set expandtab  " On pressing tab, insert 4 spaces
set relativenumber " sets line numbers to be relative

"show tabs as >~~~~ and trailing whitepsace ~'s
set list
set listchars=tab:>~,trail:~

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Rename files within vim
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'), 'file')
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>r :call RenameFile()<cr>


"
" UI Config
"
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype indent on  " load filetype specific indent files
set wildmenu        " visual autocomplete for command menu
set lazyredraw      " redraw only what you need to
set showmatch       " highlight matching [{()}]

"
" Searching
"
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

"
"" Folding
"
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open and closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

"
" Moving:
"
" move vertically by visual lin
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <ESC>

" Split Pane Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" enable code folding:
"set foldmethod=indent
"set foldlevel=99
" enable folding with spacebar:
"nnoremap <space> za


" save session
" may need plugin installed
nnoremap <leader>s :mksession<CR>

" open ag.vim
" may need plugin 'The Silver Searcher' installed
nnoremap <leader>a :Ag

"
" Git:
"
autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd Filetype markdown setlocal spell textwidth=72
autocmd Filetype text setlocal spell textwidth=72

"
" Python Code Style:
"
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix encoding=utf-8

"
" C++ Code Sytle:
"
autocmd BufNewFile, BufRead *.cpp set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix encoding=utf-8
"
" Plugins:
"
" Set up vim plug on load if not present
if empty(glob('~/.vim/autoload/plug.vim'))
          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim 
          autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" list of plugins
call plug#begin('~/.vim/bundle')
    Plug    'tmhedberg/SimpylFold'
    Plug    'vim-scripts/indentpython.vim'
    Plug    'davidhalter/jedi-vim'
    Plug    'vim-syntastic/syntastic'
    Plug    'nvie/vim-flake8'
    Plug    'scrooloose/nerdtree'
    Plug    'kien/ctrlp.vim'
    Plug    'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
    Plug    'wikitopian/hardmode'
    Plug    'JamshedVesuna/vim-markdown-preview'
call plug#end()

" SimplyFold
let g:SimpylFold_docstring_preview=1

" Jedi (python autocomplete)
"
" Possible alternative to Jedi YouCompleteMe
" (https://github.com/Valloric/YouCompleteMe) 
" Jedi (python) Commands reminder: 
" Completion <C-Space>
" Goto assignments <leader>g (typical goto function)
" Goto definitions <leader>d (follow identifier as far as possible, includes
" imports and statements)
" Show Documentation/Pydoc K (shows a popup with assignments)
" Renaming <leader>r
" Usages <leader>n (shows all the usages of a name)
" Open module, e.g. :Pyimport os (opens the os module)

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

" Powerline Settings
set laststatus=2
set t_Co=256

" Vim-Hardmode
" let g:hardtime_default_on = 1
" let g:hardtime_showmsg = 1

" Vim Markdown Preview
let vim_markdown_preview_toggle=1
let vim_markdown_preview_hotkey='<C-p>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1

