colorscheme ron
filetype on
syntax enable

set laststatus=2
set noswapfile
set number
set showmode
set splitbelow
set wildignorecase
set wildmode=longest,list

cnoremap w!! w !sudo /usr/bin/tee > /dev/null %

nnoremap Q <Nop>
nnoremap K <Nop>
nnoremap <Space> <Nop>

let mapleader = "\<Space>"
nnoremap <leader>w :w<cr>
nnoremap <leader>ve :vsplit $MYVIMRC<cr>
nnoremap <leader>vs :source $MYVIMRC<cr>
nnoremap <leader>st :SyntasticToggleMode<cr>
nnoremap <leader>sc :SyntasticCheck<cr>
nnoremap <leader>bn :bn<cr>
nnoremap <leader>bp :bp<cr>
nnoremap <leader>bf :bf<cr>
nnoremap <leader>bl :bl<cr>
nnoremap <leader>bd :bd<cr>
nnoremap <leader>ä <C-]>
nnoremap å ~
nnoremap ö 0
nnoremap ä $

vnoremap å ~
vnoremap ö 0
vnoremap ä $

autocmd BufNewFile,BufRead *.jl set filetype=julia
augroup filetype_tabs
  autocmd!
  autocmd FileType ada setlocal softtabstop=3 shiftwidth=3 expandtab
  autocmd FileType c,cpp setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType python setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType html setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType css setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType text setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType julia setlocal softtabstop=4 shiftwidth=4 expandtab
  autocmd FileType sh setlocal softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType vim setlocal softtabstop=2 shiftwidth=2 expandtab
augroup END


" Airline
let g:airline#extensions#syntastic#enabled = 1

" Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
  \ "mode": "passive",
  \ "active_filetypes": [],
  \ "passive_filetypes": [] }
let g:syntastic_ada_compiler_options = "-gnats"
