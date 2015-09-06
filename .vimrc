set tabstop=4
set shiftwidth=4
set expandtab
:imap jj <Esc>
:let mapleader = ","

execute pathogen#infect()
syntax on

filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

set relativenumber
set scrolloff=10
set splitbelow
set splitright

nnoremap -  :sp<CR><C-w>j
nnoremap \| :vsp<CR><C-w>l

highlight VertSplit guibg=black
highlight StatusLine ctermbg=blue ctermfg=black
highlight StatusLineNC ctermbg=white ctermfg=black

nnoremap <leader>t :tabe<CR>

highlight TabLineFill ctermfg=black ctermbg=blue
highlight TabLine ctermfg=magenta ctermbg=black
highlight TabLineSel ctermfg=green ctermbg=black
highlight Title ctermfg=blue ctermbg=black

set list listchars=tab:\ \ ,trail:· " Visually show bad whitespace
au FocusLost * :%s/\s\+$//e " Remove trailing spaces on focus lost
function! <SID>StripTrailingWhitespaces()
       let l = line(".")
          let c = col(".")
             %s/\s\+$//e
                call cursor(l, c)
            endfun
            autocmd BufWritePre * :call <SID>StripTrailingWhitespaces() " Remove trailing space on save

"undo files
set history=1000
set undolevels=1000
set undofile
set undodir=~/.vim/tmp/undo//
set noswapfile
set nobackup
set nowb

set runtimepath^=~/.vim/bundle/ctrlp.vim

" Enable autoread, requires :checktime to be run
 set autoread

"ctrlp
 let g:ctrlp_working_path_mode = 2
 let g:ctrlp_custom_ignore = {
     \ 'dir':  '\v(coverage|docs|reports|node_modules|bower_components|scripts-cov|src-cov|dist|tmp|\.git|\.svn|\.hg).*$',
     \ 'file': '\v\.(DS_Store|png|jpg|gif|bak|pdf)$',
     \ }
 let g:ctrlp_map = '<Leader>f'
 let g:ctrlp_show_hidden = 1

"gist
let g:gist_post_private = 1
let g:gist_open_browser_after_post = 1
