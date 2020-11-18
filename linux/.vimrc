"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

set shell=/bin/bash
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8
set fileencodings=utf-8,euckr

call vundle#begin()

Plugin 'AutoComplPop'
Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'
Plugin 'Raimondi/delimitMate'
Plugin 'preservim/nerdcommenter'

call vundle#end()

set t_Co=256
colorscheme jellybeans

let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>
let g:diminactive_enable_focus = 1

syntax enable
filetype indent on
highlight Comment term=bold cterm=bold ctermfg=4

let mapleader=","
nmap <Leader>n :NERDTreeToggle<CR>
nmap <F8> :Tagbar<CR>
nmap <Leader>t :Tagbar<CR>

let delimitMate_expand_cr=1

set nu
set smartindent
set tabstop=2
set expandtab
set shiftwidth=2

function! InsertTabWrapper()
    let col=col('.')-1
    if !col||getline('.')[col-1]!~'\k'
        return "\<TAB>"
    else if pumvisible()
        return "\<C-N>"
    else
        return "\<C-N>\<C-P>"
        end 
    endif
endfunction

map <F2> :w!<CR>
nmap <Leader>2 :w!<CR>

" for C compile
map <F9> :! gcc % -o %<<CR>
map <F10> :! ./%<<CR>
nmap <Leader>9 :! gcc % -o %<<CR>
nmap <Leader>0 :! ./%<<CR>




































