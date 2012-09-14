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

colorscheme herald

" ------------------------
" diff settings
" ------------------------
" This adds vertical spacing to keep text in the left and right panes aligned
set diffopt=filler

" This sets it to ignore whitespace
set diffopt+=iwhite

let mapleader=","
" go back # words
map <leader>b :b#<CR>
" wordwraps a paragraph
map <leader>q gqap
" makes the current window wider by 10 characters
map <leader>] 10<C-W>>
" makes the current window smaller by 10 characters
map <leader>[ 10<C-W><

map <silent> <leader>l :nohl<CR>

" toggle showing of line numbers
map <silent> <leader>L :se nu!<CR>

nmap <leader>s :source ~/.vimrc<CR>
map <silent> <leader>w :set wrap linebreak textwidth=0<CR>
map <silent> <leader>W :set nowrap<CR>

map K <Nop>

" open a new tab
map <leader>t <Esc>:tabnew<CR>

" http://vim.wikia.com/wiki/Open_SVN_diff_window
map <leader>d :vnew<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>ggdd

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

:nnoremap <leader>i :setl noai nocin nosi inde=<CR>

"highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" abbr epoch <C-R>=strftime('%s')<CR>

call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead,BufNewFile *.html set filetype=php
autocmd BufRead,BufNewFile *.svn-base set filetype=php
autocmd BufRead,BufNewFile *.less set filetype=less
autocmd BufEnter *.php :set syn=wordpress

filetype indent on
filetype plugin on

set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType make set noexpandtab

let php_sql_query=1
let php_htmlInStrings=1
let php_noShortTags=1
let php_folding=0

nnoremap <silent> <Space> @=(foldclosed('.')!=-1?'za':'l')<CR>
vnoremap <Space> zf

autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType php set errorformat=%m\ in\ %f\ on\ line\ %l

map <F5> <Esc>:EnableFastPHPFolds<Cr>

let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'Bookmark':{}, 'Tag':{}, 'TaggedFile':{}}
let g:FuzzyFinderOptions.Base.abbrev_map = { "^psu" : [ "/web/includes_psu/**/" ], "^igrad" : [ "/web/pscpages/webapp/igrad/**/" ], "^ape" : ["/web/pscpages/webapp/ape/**/"], }
nnoremap <silent> <C-n>      :FuzzyFinderBuffer<CR>
nnoremap <silent> <C-m>      :FuzzyFinderFile<CR>

set wildmenu
set wildmode=list:longest,full

function! MyTabOrComplete()
	let col = col('.')-1
		if !col || getline('.')[col-1] !~ '\k'
		return "\<tab>"
	else
		return "\<C-N>"
	endif
endfunction
inoremap <Tab> <C-R>=MyTabOrComplete()<CR>

" gf helpers (goto file)
set path+=./**
set path+=includes/**

set suffixesadd=.php,.class.php,.inc.php
set includeexpr=substitute(v:fname,'-$','','g')

syntax on

map <leader>v :call TogglePasteMode()<CR>
set tabstop=2 softtabstop=2 shiftwidth=2

function TogglePasteMode ()
        if (&paste)
        set nopaste
        echo "paste mode off"
        else
        set paste
        echo "paste mode on"
        endif
        endfunction
