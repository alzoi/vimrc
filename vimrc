" Кодировка по умолчанию.
set encoding=utf-8
set fileencoding=utf-8

" Совместимость клавиш с Windows.
source $VIMRUNTIME/mswin.vim   

" Шрифт для gvim
set guifont=Courier_New:h12:cDEFAULT

" Отключаем режим совместимости с классическим vi (для корректной работы стрелок)
set nocompatible

" Выключаем резервные файлы.
set nobackup
set noswapfile

" Колоночка, чтобы показывать плюсики для скрытия блоков кода.
set foldcolumn=1

" Вырубаем черточки на табах
set showtabline=0

" Чтобы работала кнопка (Backspace) со стрелкой для удаления впереди стоящих символов.
"set backspace=2
set backspace=indent,eol,start whichwrap+=<,>,[,]

"Включаем 256 цветов в терминале.
set t_Co=256

" Вместо писка бипером мигать курсором при ошибках ввода
set novisualbell
set t_vb=
" Включаем поддержку мыши (set mouse= чтобы отключить мышь).
set mouse=a
" Прятать мышь в режиме ввода.
set mousehide
" Используем системный буфер.
set clipboard=unnamed
" Не выгружать буфер, когда переключаемся на другой (чтобы не сохранять файл).
set hidden
" Показывать имя буфера в заголовке терминала.
"set title
" Автодополнение.
"autocmd FileType c set omnifunc=ccomplete#Complete
" Автоматическое закрытие скобок.
"imap { {}<LEFT>
" Путь к индексному файлу.
set tags+=/root/tags
" Включаем нумерацию строк.
set nu

" Сохранять историю команд 100 строк.
set history=100
" Цветовая схема.
colorscheme Yule "FreshCut pablo default delek desert
" Включаем проверку синтаксиса.
syntax on
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
" Свободное перемещение курсора по файлу
set virtualedit=all
" Постоянно показывать позицию курсора.
"set ruler
" Убирать заставку при старте.
set shortmess+=tToOI
" Отключаем перенос строк.
set nowrap
" Включаем поддержку 256 цветов.
set t_Co=256
" Показывать первое совпадение при наборе шаблона.
set incsearch
" Не подсвечивать все найденные символы.
set nohlsearch
" Игнорировать регистр символов при поиске.
set ignorecase
" Отображать табуляцию и конечные пробелы.
"set list
"используем ALT как обычно, а не для вызова пункта меню
set wak=yes
" Включаем подсветку строки.
set cursorline
" отключение автоотступов при вставке текстов, по нажатию F2 автоотступы создаватьсч не будут.
set pastetoggle=<F2>
" Подсвечивать все слова под курсором.
"autocmd CursorMoved * silent! exe printf("match Search /\\<%s\\>/",expand('<cword>'))
" F10 - Дерево тегов.
map  <F10> :TlistToggle<CR>
vmap <F10> <Esc>:TlistToggle<CR>i
imap <F10> <Esc>:TlistToggle<CR>i
" F11 - Включение или выключение нумерации строк.
imap <F11> <Esc>:set<Space>nu!<CR>a
nmap <F11> :set<Space>nu!<CR>
" F12 - Включаем дерево каталогов.
map  <F12> :NERDTreeToggle<CR>
vmap <F12> <Esc>:NERDTreeToggle<CR>i
imap <F12> <Esc>:NERDTreeToggle<CR>i
" Переключение табов (вкладок)
"map <> :tabnext<cr>
"nmap <> :tabnext<cr>
"imap <> <ESC>:tabnext<cr>i
" Включаем меню.
set wildmenu
set wcm=<Tab>
" Пункты меню.
menu Exec.nano :!nano -Kciw % <CR>
menu Exec.nomouse :set mouse= <CR>:set nonu <CR>
menu Exec.amouse  :set mouse=a<CR>:set nu   <CR>
" Вызов меню по F5
map <F5> :emenu Exec.<Tab>
" Задаём путь поиска файлов (в текущей и во всех дочерних) по команде :find имя_файла, задаём каталоги поиска заголовочных файлов.
set path=.,,**,.,/usr/local/include,/usr/include
" Позволяет копировать текст нажатием Ctrl+c
map <C-c> y<CR>
map <C-C> y<CR>
" Вырезать текст.
map <C-x> d<CR>
map <C-X> d<CR>
" Позволяет вставлять текст нажатием Ctrl+v
map <C-v> p
map <C-V> p
" Тоже вставка текста, только в режиме редактирования
imap <C-v> <ESC>pi
imap <C-V> <ESC>pi
" Копирование текста, только в визуальном режиме.
vmap <C-c> y<CR>
vmap <C-C> y<CR>
" Вырезать текст в визуальном режиме.
vmap <C-x> d<CR>
vmap <C-X> d<CR>
