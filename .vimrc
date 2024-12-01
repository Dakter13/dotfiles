
call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'            " Поддержка множества языков
Plug 'dense-analysis/ale'              " Проверка и линтинг кода
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                " Быстрая навигация
Plug 'vim-airline/vim-airline'         " Улучшенная статусная строка

call plug#end()

" Копирование в системный буфер обмена по умолчанию
nnoremap y "+y
nnoremap yy "+yy
vnoremap y "+y
vnoremap p "+p
vnoremap P "+P

set number
