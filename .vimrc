set nocompatible
set nohlsearch
filetype off
syntax enable

" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/webapi-vim' " dependency for gist-vim
Plugin 'mattn/gist-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'plasticboy/vim-markdown'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tyru/open-browser.vim'
Plugin 'tpope/vim-sensible'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'adelarsq/vim-matchit'
Plugin 'KKPMW/vim-sendtowindow'
Plugin 'brightcloudy/brighty-vim'
Plugin 'brightcloudy/vim-licenses'
Plugin 'drzel/vim-split-line'
Plugin 'dense-analysis/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-rhubarb'
call vundle#end()            " required
filetype plugin indent on    " required

" plugin settings

" ale fixers/linters 
" let g:ale_linters = { 'javascript': ['standard'] }

" airline
let g:airline#extensions#tabline#enabled = 1

" vim-licenses
let g:licenses_copyright_holders_name = 'Karl, Ryan <brightycloud@gmail.com>'
let g:licenses_authors_name = 'Karl, Ryan <brightycloud@gmail.com>'
let g:licenses_default_commands = ['allpermissive', 'bsd3', 'gpl', 'mit']
let g:licenses_suppress_identical = 1

" vim-surround
let g:surround_45 = "\\(\r\\)" " surround character -

" tab and indent settings
set softtabstop=0
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smarttab
let mapleader=','
nmap <Leader>o :set nopaste<CR>
nmap <Leader>p :set paste<CR>

" autocmds 
augroup vimrc
  au!
  " auto re-source vimrc after writing it
  au BufWritePost .vimrc :source ~/.vimrc
augroup END

augroup license
  au!
  " auto set and remove comment format-string 
  " so that there is none after it is written
  au BufWinEnter LICENSE* :set comments=:# 
  au BufWritePre LICENSE* :%s/^#\s\?//
augroup END

" utility functions

" command definitions
nnoremap s :SplitLine<CR>
nnoremap S ms0j:SplitLine<CR>`s
