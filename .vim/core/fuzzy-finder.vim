let g:FuzzyFinderOptions = { 'Base':{}, 'Buffer':{}, 'File':{}, 'Dir':{}, 'MruFile':{}, 'MruCmd':{}, 'Bookmark':{}, 'Tag':{}, 'TaggedFile':{}}
let g:FuzzyFinderOptions.Base.abbrev_map = { "^psu" : [ "/web/includes_psu/**/" ], "^igrad" : [ "/web/pscpages/webapp/igrad/**/" ], "^ape" : ["/web/pscpages/webapp/ape/**/"], }

nnoremap <silent> <C-n>      :FuzzyFinderBuffer<CR>
nnoremap <silent> <C-m>      :FuzzyFinderFile<CR>
