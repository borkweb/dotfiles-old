""
"" Basic Setup
""

set nocompatible   " Use vim, no vi defaults
set number         " Show line numbers
set ruler          " Show line and column number
set encoding=utf-8 " Set default encoding to UTF-8
set visualbell
set cursorline     " highlight the line the cursor is on
set ttyfast        " helps with repaint
set laststatus=2   " 2 means all windows will always have a status line
set textwidth=0    " don't auto-wrap lines
set wildmenu
set wildmode=list:longest

""
"" Whitespace
""
set nowrap                     " don't wrap lines
set backspace=indent,eol,start " backspace through everything in insert mode
set autoindent                 " Automatic indentation
set list                       " Show invisible characters
set tabstop=2                  " a tab is 2 spaces
set softtabstop=2              " tab width while in insert mode
set shiftwidth=2               " number of spaces to use for autoindenting
set wrapscan                   " wrap a whole word to the next line

""
"" List chars - show hidden characters
""
set listchars=""                  " Reset the listchars
set listchars=eol:¬               " end of line should have ¬
set listchars+=tab:»\             " a tab should display as "▸ ", trailing whitespace as "."
set listchars+=trail:·            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen

""
"" Search Settings
""
set hlsearch    " Highlight all search terms
set incsearch   " While typing a search command, show where the pattern - as it was typed - matches
set ignorecase  " Ignore case when searching
set smartcase   " Override the ignorecase option if the search pattern contains uppercase characters
set showmatch   " When a bracket is inserted, briefly jump to the matching one if on the screen
set matchtime=3 " 10ths of a second to show the matching paren

""
"" Misc Settings
""
set iskeyword-=_     " Include underscores as part of keyword names
set isfname+=_       " Include underscores as part of filenames
set updatecount=50   " After this many characters, write the swp file to disk
set ffs=unix,dos,mac " Sets the EOL format
set pastetoggle=<F2> " Set a key for toggling paste mode
set nocindent        " Disables automattic C program indenting
set hidden
set modeline
set modelines=5
set splitbelow       " always put horizontal splits at the bottom
set splitright       " always put vertical splits on the right
set sidescrolloff=15 " start scrolling on the side if we are 15 characters from the edge
set sidescroll=1

""
"" Colors & Theme
""
set t_Co=256 " Set the terminal color to 256
syntax enable
set background=dark
colorscheme bork

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:Powerline_symbols = 'fancy'

set runtimepath^=~/.vim/bundle/ctrlp.vim

" gf helpers (goto file)
set path+=./**
set path+=includes/**

set suffixesadd=.php,.class.php,.inc.php
set includeexpr=substitute(v:fname,'-$','','g')

" When writing a file, if there are errors, have Syntastic plugin mark them
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_scss_checkers = ['scss_lint']
"let g:syntastic_scss_scsslint_args = '--config=/Users/matt/.scss-lint.yml'

let g:tagbar_type_javascript = {
	\ 'ctagsbin' : '/usr/local/bin/jsctags'
\ }

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

source ~/.vim/core/autocmd.vim
source ~/.vim/core/filetypes.vim
source ~/.vim/core/ctags.vim
source ~/.vim/core/mappings.vim
source ~/.vim/core/diff.vim
source ~/.vim/core/gui.vim

autocmd BufRead,BufNewFile /Users/matt/git/dark-brotherhood/* set expandtab
autocmd BufRead,BufNewFile /Users/matt/git/dark-brotherhood/* set tabstop=2

call pathogen#helptags()
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
