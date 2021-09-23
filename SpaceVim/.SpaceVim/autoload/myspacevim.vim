function! myspacevim#before() abort
    let g:mapleader = ','
    nnoremap jk <esc>
    imap <leader>a <Left>
    imap <leader>f <right>
    imap <leader>d <Esc>o

    imap <leader>w <ESC>:w<cr>
    nmap <leader>w :w!<cr>
    vmap <leader>w <C-c>:w!<cr>
    imap <leader>q <ESC>:q<cr>
    nmap <leader>q :q<cr>
    imap <leader>e <ESC>

    "窗口分割时,进行切换的按键热键需要连接两次,比如从下方窗口移动
    "光标到上方窗口,需要<c-w><c-w>k,非常麻烦,现在重映射为<c-k>,切换的
    "时候会变得非常方便.
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    au BufNewFile,BufRead *.c noremap <F12> ggO/* @Author: Jorhelp<jorhelp@tom.com><CR><CR>@Date:<Esc>:read !date <CR>kJo<CR>@Desc:<CR>/<CR><Down>
    au BufNewFile,BufRead *.cpp noremap <F12> ggO/* @Author: Jorhelp<jorhelp@tom.com><CR><CR>@Date:<Esc>:read !date <CR>kJo<CR>@Desc:<CR>/<CR><Down>#include <iostream><CR>using namespace std;<CR><CR>int main()<CR>{<CR><CR>return 0;<CR>}<Esc>:5<CR>A
    au BufNewFile,BufRead *.py noremap <F12> ggO#! python3<CR># coding: utf-8<CR># @Author: Jorhelp<jorhelp@tom.com><CR># @Date:<Esc>:read !date <CR>kJo# @Desc:<Esc>Ja

  endfunction
