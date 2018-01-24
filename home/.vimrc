"Base64 decode/encode shortcuts
  vnoremap <leader>64d c<c-r>=system('base64 --decode', @")<esc>
  vnoremap <leader>64e c<c-r>=system('openssl base64 -e -A', @")<esc>

syntax enable
set background=light
colorscheme solarized
set expandtab
set tabstop=2
set shiftwidth=2
set nu

let loaded_netrwPlugin = 1

execute pathogen#infect()
syntax on
filetype plugin indent on

let NERDTreeShowHidden=1
nnoremap <C-n> :NERDTreeToggle<CR>

let g:airline#extensions#ale#enabled = 1

" Go stuff
" Just autoimport for me, OK?
let g:go_fmt_command = "goimports"
let g:ale_linters = { 'go': ['gofmt', 'go build'], 'ruby': ['ruby'] }

" Allow reselection of last pasted text.
" source:
" http://vim.wikia.com/wiki/Selecting_your_pasted_text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'
