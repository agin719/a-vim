" Basics {
    set nocompatible " explicitly get out of vi-compatible mode set autoindent  " indent as above
    set smartindent " guess where to indent
    "set noexrc " don't use local version of .(g)vimrc, .exrc

    "set background=dark " we plan to use a dark background
    "set background=light " we plan to use a light background
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor 
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch) 
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the 
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line 
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match 
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on
    nmap <right> :tabn<cr>
    nmap <left> :tabp<cr>

    " for test
    "set relativenumber
" }
set nu
set backspace=indent,eol,start
set ruler               " show the cursor position all the time
set laststatus=2        " Always show the statusline
set showcmd             " display incomplete commands
set incsearch           " do incremental searching
set scrolloff=7         "keep cursor stay in the middle 14 lines
set laststatus=2                                             
set showmatch           "match the parentheses

set tabstop=4
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab
set shiftround
"set nowrap      "显示不换行

set ignorecase
set smartcase 

set t_Co=256
set background=dark
colorscheme molokai

syntax on

set cursorline
set cursorcolumn
set colorcolumn=80

set tags=tags
set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plugin settings {
    " Vundle seetings {
        set nocompatible
        filetype off
        set runtimepath+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        Plugin 'flazz/vim-colorschemes'
        Plugin 'tomasr/molokai'
        Plugin 'Valloric/YouCompleteMe'
        Plugin 'majutsushi/tagbar'
        Plugin 'The-NERD-tree'
        call vundle#end()
        filetype plugin indent on
    " }

    " vim-airline settings {
        let g:airline_theme="base16"
    "}

    " YouCompleteMe settings {
        "let g:ycm_extra_conf_globlist = ['/mnt/raid0/ljj/*']
        let g:ycm_server_python_interpreter='/usr/bin/python'
        let g:ycm_global_ycm_extra_conf='/mnt/raid0/ljj/.ycm_extra_conf.py'
        "nnoremap <F9> :YcmCompleter GoToDefinitionElseDeclaration<CR>
        nnoremap <F8> :YcmDiags<CR>
        nnoremap <F9> :YcmCompleter GoToDeclaration<CR>
        nnoremap <F10> :YcmCompleter GoToDefinition<CR>
        "let g:ycm_autoclose_preview_window_after_completion = 1
        set completeopt-=preview
        let g:ycm_add_preview_to_completeopt = 0
        let g:ycm_enable_diagnostic_highlighting = 0
    " }

    " tagbar settings {
        nmap <F7> :TagbarToggle<cr>
        let g:tagbar_left = 1
        let g:tagbar_sort = 0
    " }

    " NERDTree settings {
        nmap <F3> :NERDTree<cr>
    " }
"} end of vim-plugin settings

