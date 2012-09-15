let mapleader=","

:nnoremap <leader>i :setl noai nocin nosi inde=<CR>

" go back # words
map <leader>b :b#<CR>

" shortcut for tcomment commenting
map <leader>c <c-_><c-_>

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

" Configure tagbar
nmap <F6> :TagbarToggle<CR>

map <F5> <Esc>:EnableFastPHPFolds<Cr>

map <leader>v :call TogglePasteMode()<CR>

nnoremap <silent> <Space> @=(foldclosed('.')!=-1?'za':'l')<CR>
vnoremap <Space> zf
inoremap <Tab> <C-R>=MyTabOrComplete()<CR>
