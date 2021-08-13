inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

inoremap ( ()<Left>

inoremap " ""<Left>
inoremap ' ''<Left>

inoremap [ []<Left>

" Jump out of braces with tab
inoremap <Tab> <esc>la

" Compile
nnoremap <F9> :w <bar> :!clear && clang++ -std=c++17 % -o /tmp/%:r -Wextra -Wall <CR>
nnoremap <F10> :!clear && /tmp/%:r<CR>

set autoindent
