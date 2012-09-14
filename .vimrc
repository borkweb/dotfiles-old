" http://py.vaults.ca/~x/python_and_vim.html

""
"" Basic Setup
""

set nocompatible   " Use vim, no vi defaults
set number         " Show line numbers
set ruler          " Show line and column number
set encoding=utf-8 " Set default encoding to UTF-8

""
"" Whitespace
""
set nowrap                     " don't wrap lines
set backspace=indent,eol,start " backspace through everything in insert mode
set autoindent                 " Automatic indentation
set list                       " Show invisible characters
set tabstop=2 
set softtabstop=2 
set shiftwidth=2

" List chars
set listchars=""                  " Reset the listchars
set listchars=tab:>-              " a tab should display as ">-", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set nocin
set hidden
set showmatch
set matchtime=3
set t_Co=256
set ffs=unix,dos,mac
set wrapscan
set incsearch
set ignorecase
set hlsearch
set smartcase
set updatecount=50
set modeline modelines=5 nu spr

set iskeyword-=_
set isfname+=_

set pastetoggle=<F2>

syntax on
colorscheme bork

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=0

" gf helpers (goto file)
set path+=./**
set path+=includes/**

set suffixesadd=.php,.class.php,.inc.php
set includeexpr=substitute(v:fname,'-$','','g')

function! MyTabOrComplete()
	let col = col('.')-1
		if !col || getline('.')[col-1] !~ '\k'
		return "\<tab>"
	else
		return "\<C-N>"
	endif
endfunction

function TogglePasteMode ()
        if (&paste)
        set nopaste
        echo "paste mode off"
        else
        set paste
        echo "paste mode on"
        endif
        endfunction

exe 'source ~/.vim/core/autocmd.vim'
exe 'source ~/.vim/core/filetypes.vim'
exe 'source ~/.vim/core/fuzzy-finder.vim'
exe 'source ~/.vim/core/ctags.vim'
exe 'source ~/.vim/core/mappings.vim'
exe 'source ~/.vim/core/diff.vim'
