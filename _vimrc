"=====================================================================================
" Конфигурация для gvim 8.1.282.0
" Файл должен находиться в папке $HOME/_vimrc или $VIM/_vimrc
" Команда для проверки значения переменной :echo $VIM
"=====================================================================================

" Кодировка по умолчанию.
set encoding=utf-8
set fileencoding=utf-8

" Отключаем режим совместимости с классическим vi (для корректной работы стрелок)
set nocompatible
" Совместимость клавиш с Windows.
source $VIMRUNTIME/mswin.vim
behave mswin

" Шрифт для gvim
set guifont=Courier_New:h12:cDEFAULT

" Чтобы работала кнопка (Backspace) со стрелкой для удаления впереди стоящих символов.
set backspace=2

" Включаем поддержку мыши (set mouse= чтобы отключить мышь).
set mouse=a
" Прятать мышь в режиме ввода.
set mousehide

" Используем системный буфер.
set clipboard=unnamed

" Свободное перемещение курсора по файлу
set virtualedit=all
" Постоянно показывать позицию курсора.
set ruler
" Убирать заставку при старте.
set shortmess+=tToOI
" Отключаем перенос строк.
set nowrap

" Включаем проверку синтаксиса.
syntax on

" Включаем нумерацию строк.
set nu

" Сохранять по нажатию Ctrl+S
noremap <silent> <C-S>			:update<CR>
vnoremap  <silent> <C-S>       <C-C>:update<CR>
inoremap  <silent> <C-S>       <C-O>:update<CR>

" Отступы блоков кода Tab и Shift+Tab
vnoremap <Tab>		>
vnoremap <S-Tab>	<

" Отступы блоков кода стрелками > <
"vnoremap < <gv
"vnoremap > >gv

" Сохранять историю команд 100 строк.
set history=200

" Размер табуляции.
set tabstop=3
" Число пробелов, используемых при автоотступе.
set shiftwidth=3

" Включаем плагин определения типа файла.
filetype plugin on
" Включить автоматическое формирование автоотступов.
set ai
"Отступы в стиле си
"set ci
" Включаем умный автоотступ (set nosi для отключений).
set si

" Включаем поддержку 256 цветов.
set t_Co=256
" Цветовая схема
colorscheme desert

" Показывать первое совпадение при наборе шаблона.
set incsearch
" Не подсвечивать все найденные символы.
set nohlsearch
" Игнорировать регистр символов при поиске.
set ignorecase

" Отключить меню, инструменты, прокрутку.
"set guioptions-=m
set guioptions-=T
"set guioptions-=r

" Меняем цвет символа ~ и фона для зоны отсутствия текста.
hi NonText guifg=grey30 guibg=grey30
