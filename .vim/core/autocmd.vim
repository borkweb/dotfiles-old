autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
autocmd BufRead,BufNewFile *.html set filetype=php
autocmd BufRead,BufNewFile *.svn-base set filetype=php
autocmd BufRead,BufNewFile *.less set filetype=less
autocmd BufEnter *.php :set syn=wordpress
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType less set omnifunc=csscomplete#CompleteCSS
autocmd FileType scss set omnifunc=csscomplete#CompleteCSS
autocmd FileType make set noexpandtab

" Git Configuration
""""""""""""""""""""
autocmd FileType gitcommit setlocal textwidth=72
autocmd FileType gitcommit setlocal colorcolumn=72

" Markdown Configurations
""""""""""""""""""""
autocmd FileType markdown setlocal colorcolumn=100
autocmd FileType markdown setlocal wrap linebreak nolist

" PHP Configurations
""""""""""""""""""""
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType php set errorformat=%m\ in\ %f\ on\ line\ %l
autocmd FileType php setlocal colorcolumn=100

" Python configurations
""""""""""""""""""""""""
au BufNewFile,BufReadPost python set shiftwidth=4 expandtab tabstop=4 softtabstop=4
autocmd FileType python setlocal colorcolumn=80
autocmd FileType python map <buffer> <F4> :call Flake8()<CR>

" Only show NERDTree by default if no file was specified
autocmd vimenter * if !argc() | NERDTree | endif

" If NERDTree was the only window left open, go ahead and close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
