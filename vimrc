set nocompatible 
filetype plugin indent on
syntax on
set backspace=indent,eol,start

if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif
if has("mouse_sgr")
    set ttymouse=sgr
else
    set ttymouse=xterm2
end
set mouse=a
let NERDTreeShowHidden=1
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space="\ua0"
set guifont=Inconsolata\ for\ Powerline:h14
let g:airline_skip_empty_sections=1
let g:Powerline_symbols ='fancy'
let g:airline_theme='jellybeans'
set number
set encoding=utf-8
set t_Co=256
set term=xterm-256color
set termencoding=utf-8
set laststatus=2
colorscheme jellybeans
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
set updatetime=1000
set splitright
set background=dark
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set tabstop=4
set shiftwidth=4

autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 expandtab
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=4 tabstop=4 expandtab

map <silent> <C-o> :NERDTreeToggle<CR>

let g:sql_set_type_default = 'pgsql'

:set number relativenumber

:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
