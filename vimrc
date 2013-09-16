if has("autocmd")
  " Enable filetype detection
  filetype plugin indent on
 
  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif
if &t_Co > 2 || has("gui_running")
  " Enable syntax highlighting
  syntax on
endif

execute pathogen#infect()

set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab

" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" prevents the creation of .swp files
set noswapfile

" NERDTree starts automatically
autocmd vimenter * NERDTree

" Add line numbers to vim window
set number

" Use ACK
set grepprg=ack

