let mapleader=","

:nnoremap <leader>i :setl noai nocin nosi inde=<CR>

" map a to Ack!
nnoremap <leader>a :Ack 

map <silent> <leader>' /'[^']+'<CR>:nohl<CR>
map <silent> <leader>" /"[^"]+"<CR>:nohl<CR>

" go back # words
map <leader>b :b#<CR>

" folds an HTML tag
nnoremap <leader>ft Vatzf

" wordwraps a paragraph
map <leader>q gqap

" makes the current window wider by 10 characters
map <leader>] 10<C-W>>

" makes the current window smaller by 10 characters
map <leader>[ 10<C-W><

" toggle showing of line numbers
map <silent> <leader>L :se nu!<CR>

nmap <leader>s :source ~/.vimrc<CR>

" Sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" re-select text that was just pasted
nnoremap <leader>v V`]

map K <Nop>

" open a new tab
map <leader>t <Esc>:tabnew<CR>

" Strip all trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" http://vim.wikia.com/wiki/Open_SVN_diff_window
map <leader>d :vnew<CR>:read !svn diff<CR>:set syntax=diff buftype=nofile<CR>ggdd

" Underline the current line with '='
nmap <silent> <leader>ul :t.\|s/./=/g\|:nohls<cr>

" find merge conflict markers
nmap <silent> <leader>fc <ESC>/\v^[<=>]{7}( .*\|$)<CR>

" Adjust viewports to the same size
map <Leader>= <C-w>=

" Toggle the awesome undo tree visualizer
map <F5> :GundoToggle<CR>

map <leader>p :call TogglePasteMode()<CR>

" Superuser write
cnoremap w!! w !sudo dd of=%

" Use perl compatible regex formatting...not vim style
nnoremap / /\v
vnoremap / /\v

" Make j and k move one line at a time, even on wrapped lines
nnoremap j gj
nnoremap k gk

" Use leader space to clear a search term
nnoremap <leader><space> :noh<cr>

nnoremap <silent> <Space> @=(foldclosed('.')!=-1?'za':'l')<CR>
vnoremap <Space> zf
inoremap <Tab> <C-R>=MyTabOrComplete()<CR>

" GitGutter support
nmap <silent> ]h :<C-U>execute v:count1 . "GitGutterNextHunk"<CR>
nmap <silent> [h :<C-U>execute v:count1 . "GitGutterPrevHunk"<CR>

" Switch windows with ctrl + hjkl
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" wordpress.vim: Search WordPress codex
nnoremap <leader>co :Wcodexsearch<CR>
vnoremap <leader>co :Wcodexsearch<CR>

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:wordpress_vim_wordpress_path = '/Users/matt/git/wordpress/'
