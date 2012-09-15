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
autocmd FileType php set makeprg=php\ -l\ %
autocmd FileType php set errorformat=%m\ in\ %f\ on\ line\ %l

" Only show NERDTree by default if no file was specified
autocmd vimenter * if !argc() | NERDTree | endif

" If NERDTree was the only window left open, go ahead and close vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
