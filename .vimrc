" creating vim file was done using this blog:
" https://dougblack.io/words/a-good-vimrc.html




" use Pathogen
" execute pathogen#infect()

"call pathogen#runtime_append_all_bundles()  " use pathogen

let mapleader = ','     " leader is a comma

syntax enable " enable syntax processing
"colorscheme Oceanic "desert change colour scheme
colorscheme dracula

filetype plugin indent on

set tabstop=4 " number of existing spaces per TAB
set softtabstop=4  " number of spaces in a tab when editing
set expandtab  " On pressing tab, insert 4 spaces

"show tabs as >~~~~ and trailing whitepsace ~'s
set list
set listchars=tab:>~,trail:~

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

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
" Moving
"

" move vertically by visual lin
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

" jk is escape
inoremap jk <ESC>

" toggle gundo
" may need plugin installed
nnoremap <leader>u :GundoToggle<CR>

" save session
" may need plugin installed
nnoremap <leader>s :mksession<CR>

" open ag.vim
" may need plugin 'The Silver Searcher' installed
nnoremap <leader>a :Ag


" Plugins

" GUndo

" The Silver Searcher

" CtrlP plugin install location
set runtimepath^=~/.vim/bundle/ctrlp.vim



" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'







