set nocompatible
syntax on
filetype plugin indent on
set number " show line number
"let mapleader = ";"

" General mappings
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>
noremap Q <nop>
inoremap <CR> <Esc>
inoremap <S-CR> <CR>
" for terminals not supporting S-CR (this is shift `)
inoremap ¬ <CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

noremap <BS> <C-U>
noremap <Space> <C-D>
noremap H ^
noremap L $

" Search
set ignorecase
set smartcase
set hlsearch

" Trailing whitespace
:highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
:match ExtraWhitespace /\s\+$/

" Pathogen Plugin Manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
" To disable a plugin, add it's bundle name to the following list
let g:pathogen_disabled = []
execute pathogen#infect()

set background=dark
colorscheme solarized
