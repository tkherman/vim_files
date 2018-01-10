" basic settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set mouse=a
set relativenumber
set number

" colorscheme
"colorscheme new-railscasts
"colorscheme forgotten-dark
"colorscheme forgotten-light
"colorscheme plumber-dark
"colorscheme jellygrass
colorscheme turtles
"colorscheme mayansmoke

"pathogen installation
execute pathogen#infect()
call pathogen#helptags()

"NERDTree settings
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
hi Directory guifg=#FF0000 ctermfg=red

"split navigations
nnoremap <Down> <C-W><C-J>
nnoremap <Up> <C-W><C-K>
nnoremap <Left> <C-W><C-H>
nnoremap <Right> <C-W><C-L>

"fast scrolling
map <C-k> 5k<CR>
map <C-j> 5j<CR>

"set paste
map <C-p> :set paste<CR>
map <C-l> :set nopaste<CR>

"highlight whitespace
highlight ExtraWhitespace ctermbg=red
match ExtraWhitespace /\s\+\(\%#\)\@!$/
"strip trailing white space
function! StripTailingWhitespace()
    normal! mm
    %s/\s\+$//e
    normal! `m
endfunction
command! StripTailingWhitespace call StripTailingWhitespace()
autocmd BufWritePre * StripTailingWhitespace

"auto-pairs config
let g:AutoPairsShortcutFastWrap = '<C-e>'
let g:AutoPairsShortcutToggle = '<C-a>'
