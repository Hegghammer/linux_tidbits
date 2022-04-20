"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
" Based largely on https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/

" vim.plug settings
"https://github.com/junegunn/vim-plug
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax' 
Plug 'vim-pandoc/vim-markdownfootnotes'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'preservim/vim-pencil'
Plug 'junegunn/limelight.vim'

" theme
Plug 'savq/melange'

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" to remove search highlight
Plug 'romainl/vim-cool' 

" to easily comment out lines
Plug 'tpope/vim-commentary'

" preview markdown
Plug 'shime/vim-livedown'

" Initialize plugin system
call plug#end()

""""""""""""""""""""""""""""
" Encoding stuff
set encoding=utf-8
set arabicshape

" to avoid linebreaks in mail
setlocal fo+=aw

" Set color scheme
"colorscheme morning
set background=dark
set termguicolors
colorscheme melange

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file is use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to the file.
"set number

" Highlight cursor line underneath the cursor horizontally.
set nocursorline

" Highlight cursor line underneath the cursor vertically.
set nocursorcolumn

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" change the direction of new splits
set splitbelow
set splitright

" Make scrolling fast
set ttyfast lazyredraw

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
"set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
"set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=200

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" MAPPINGS --------------------------------------------------------------- {{{

" Set the backslash as the leader key.
let mapleader = '\'

" Press \\ to jump back to the last cursor position.
nnoremap <leader>\ ``

" Press \p to print the current file to the default printer from a Linux operating system.
" View available printers:   lpstat -v
" Set default printer:       lpoptions -d <printer_name>
" <silent> means do not display output.
nnoremap <silent> <leader>p :%w !lp<CR>

" Type jj to exit insert mode quickly.
inoremap jj <Esc>

" Press the space bar to type the : character in command mode.
nnoremap <space> :

" Pressing the letter o will open a new line below the current one.
" Exit insert mode after creating a new line above or below the current line.
nnoremap o o<esc>
nnoremap O O<esc>

" Center the cursor vertically when moving to the next word during a search.
nnoremap n nzz
nnoremap N Nzz

" Yank from cursor to the end of line.
nnoremap Y y$

" You can split the window in Vim by typing :split or :vsplit.
" Navigate the split view easier by pressing CTRL+j, CTRL+k, CTRL+h, or CTRL+l.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Resize split windows using arrow keys by pressing:
" CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
noremap <c-up> <c-w>+
noremap <c-down> <c-w>-
noremap <c-left> <c-w>>
noremap <c-right> <c-w><

" Have nerdtree ignore certain files and directories.
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

"markdownfootnotes
nnoremap <leader>n :FootnoteNumber
nnoremap <leader>d :FootnoteUndo
nnoremap <leader>t :FootnoteRestore

"Goyo
let g:limelight_conceal_ctermfg = 'Grey'
let g:limelight_default_coefficient = 0.6

"Goyo + Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Livedown
nmap gm :LivedownToggle<CR>
" View at http://10.0.33.105:1337

" F keys

" F1 to toggle line number
set nonumber
nnoremap <F2> :set nonumber!<CR>


" F2 to toggle NerdTree
nnoremap <F3> :NERDTreeToggle<cr> 

" F4 to toggle Goyo
noremap <F4> :Goyo<CR>

" F5 to toggle cursor lines
fu! ToggleCurline ()
  if &cursorline && &cursorcolumn
    set nocursorline
    set nocursorcolumn
  else
    set cursorline
    set cursorcolumn
  endif
endfunction

map <silent><F5> :call ToggleCurline()<CR>

" F8 to run a python script inside Vim
nnoremap <F8> :w <CR>:!clear <CR>:!python3 % <CR>


" F9 and F10 to toggle dark/light
nnoremap <F9> :set background=dark <CR>
nnoremap <F10> :set background=light <CR>

" F11 already toggles fullscreen

" Arabic
" from https://andreasmhallberg.github.io/typing-arabic-in-vim/
" Switch to English - mapping
nnoremap <Leader>e :<C-U>call EngType()<CR>
" Switch to Arabic - mapping
nnoremap <Leader>a :<C-U>call AraType()<CR>

" Switch to English - function
function! EngType()
" To switch back from Arabic
  set keymap= " Restore default (US) keyboard layout
  set norightleft
endfunction

" Switch to Arabic - function
function! AraType()
    set keymap=arabic-pc "Modified keymap. File in ~/.vim/keymap/
    set rightleft
endfunction


" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" Enable the marker method of folding.
"augroup filetype_vim
"    autocmd!
"    autocmd FileType vim setlocal foldmethod=marker
"augroup END

" If the current file type is HTML, set indentation to 2 spaces.
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" If Vim version is equal to or greater than 7.3 enable undofile.
" This allows you to undo changes to a file even after saving it.
if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

" You can split a window into sections by typing `:split` or `:vsplit`.
" Display cursorline and cursorcolumn ONLY in active window.
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" If GUI version of Vim is running set these options.
if has('gui_running')

    " Set the background tone.
    "set background=dark

    set encoding=utf-8
    set arabicshape

    " Set the color scheme.
    colorscheme morning

    " Set a custom font you have installed on your computer.
    " Syntax: <font_name>\ <weight>\ <size>
    set guifont=Courier\ New\ 14

    " Display more of the file by default.
    " Hide the toolbar.
    set guioptions-=T

    " Hide the the left-side scroll bar.
    set guioptions-=L

    " Hide the the left-side scroll bar.
    set guioptions-=r

    " Hide the the menu bar.
    set guioptions-=m

    " Hide the the bottom scroll bar.
    set guioptions-=b

    " Map the F4 key to toggle the menu, toolbar, and scroll bar.
    " <Bar> is the pipe character.
    " <CR> is the enter key.
    nnoremap <F9> :if &guioptions=~#'mTr'<Bar>
        \set guioptions-=mTr<Bar>
        \else<Bar>
        \set guioptions+=mTr<Bar>
        \endif<CR>

endif

" }}}

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" }}}


" === fzf bibtex
" https://github.com/msprev/fzf-bibtex

let $FZF_BIBTEX_CACHEDIR = '/home/thomas/vault/fzf-bib-cache'
let $FZF_BIBTEX_SOURCES = '/home/thomas/heggcloud-snap/Documents/work-passive/reference_files/pandoc/master.bib'

function! s:bibtex_cite_sink(lines)
    let r=system("bibtex-cite ", a:lines)
    execute ':normal! a' . r
endfunction

function! s:bibtex_markdown_sink(lines)
    let r=system("bibtex-markdown ", a:lines)
    execute ':normal! a' . r
endfunction

nnoremap <silent> <leader>c :call fzf#run({
                        \ 'source': 'bibtex-ls',
                        \ 'sink*': function('<sid>bibtex_cite_sink'),
                        \ 'up': '40%',
                        "\ 'options': '--ansi --layout=reverse-list --multi --prompt "Cite> "'})<CR>
                        \ 'options': '--ansi --multi --prompt "Cite> "'})<CR>
nnoremap <silent> <leader>m :call fzf#run({
                        \ 'source': 'bibtex-ls',
                        \ 'sink*': function('<sid>bibtex_markdown_sink'),
                        \ 'up': '40%',
                        "\ 'options': '--ansi --layout=reverse-list --multi --prompt "Markdown> "'})<CR>
                        \ 'options': '--ansi --multi --prompt "Markdown> "'})<CR>
