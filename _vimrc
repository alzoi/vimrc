"=====================================================================================
" Конфигурация для gvim 8.1.282.0
" Файл должен находиться в папке $HOME/_vimrc или $VIM/_vimrc
" Команда для проверки значения переменной :echo $VIM
"=====================================================================================

" Кодировка по умолчанию.
set encoding		=utf-8
set fileencoding	=utf-8
set termencoding	=utf-8
set fileencodings	=utftf8
set encoding		=utf-8
scriptencoding utf-8

" Добавляем список папок для поиска файлов.
let $PATH .= ';D:\Temp\include;'

" Добавляем путь к каталогу плагинов.
"set runtimepath^=$VIMRUNTIME/_vim/pack/

" Менеджер плагинов vim-plug (установка командой PlugInstall):
"call plug#begin('D:\vim\vimfiles\plugged')
	" - проводник по файловой системе.
"	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	" - значки
"	Plug 'ryanoasis/vim-devicons'
"	Plug 'morhetz/gruvbox'
"call plug#end()

" Отключаем режим совместимости с классическим vi (для корректной работы стрелок)
set nocompatible
" Совместимость клавиш с Windows.
source $VIMRUNTIME/mswin.vim
behave mswin

" Шрифты для gvim
set guifont=DroidSansMono_Nerd_Font_Mono:h12:cRUSSIAN:qDRAFT,Courier_New:h12:cDEFAULT

" Чтобы работала кнопка (Backspace) со стрелкой для удаления впереди стоящих символов.
"set backspace=2
set backspace=indent,eol,start

" Выключаем резервные копии файлов.
set nobackup        
set noswapfile

" Не выгружать буфер, когда переключаемся на другой (чтобы не сохранять файл).
set hidden

" Колоночка, чтобы показывать плюсики для скрытия блоков кода.
"set foldcolumn=1

" Отключаем черточки на табах.
set showtabline=0

" Включаем поддержку мыши (set mouse= чтобы отключить мышь).
set mouse=a
" Прятать мышь в режиме ввода.
set mousehide

" Используем системный буфер.
set clipboard=unnamed

" Включаем подсветку строки.
set cursorline

" Свободное перемещение курсора по файлу
"set virtualedit=all
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
noremap	<silent> <C-S>		:update<CR>
vnoremap	<silent> <C-S>		<C-C>:update<CR>
inoremap	<silent> <C-S>		<C-O>:update<CR>

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

" Удаляем символ | в вертикальных границах окон.
set fillchars+=vert:\ 
let g:gruvbox_vert_split='bg2'
let g:gruvbox_guisp_fallback='NONE'
" Скрываем полосу прокрутки дерева NERD.
set guioptions-=L

" Цветовая схема
"colorscheme desert
colorscheme gruvbox
set background=light

" Меняем цвет символа ~ и фона для зоны отсутствия текста.
"hi NonText guifg=grey16 guibg=grey16

" Показывать первое совпадение при наборе шаблона.
set incsearch
" Не подсвечивать все найденные символы.
set nohlsearch
" Игнорировать регистр символов при поиске.
set ignorecase

" Скрыть меню, инструменты, скролл.
"set guioptions-=r
"set guioptions-=m
set guioptions-=T

"let g:NERDTreeDirArrowExpandable = ''
"let g:NERDTreeDirArrowCollapsible = ''

" Плагин Дерево папок.
map <F3> :NERDTreeToggle<CR>

" Начальная ширина дерева NERD
let g:NERDTreeWinSize = 20

" Закрыть NERDtree, когда файлы были открыты
"let g:NERDTreeQuitOnOpen = 1

" Показать NERDTree закладкиi
"let g:NERDTreeShowBookmarks = 1

" Отображение стрелок вместо ascii art в NERDTree
"let g:NERDTreeDirArrows = 0

" Изменить текущий рабочий каталог на основе корневого каталога в NERDTree
let g:NERDTreeChDirMode = 2

" Запустите NERDTree в режиме минимального интерфейса (без справочных строк)
let g:NERDTreeMinimalUI = 1

" Отмена автоматической вставки комментариев.
augroup auto_comment
	au!
	au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
augroup END

" Переназначаем автодополнение кода по нажатию Ctrl+Space.
inoremap <C-space> <C-N>

" Открывать файл под курсором в новом окне.
:map <F8> :vertical wincmd f<CR>
