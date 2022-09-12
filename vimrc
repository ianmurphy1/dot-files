set nocompatible 
filetype plugin indent on
syntax on
set backspace=indent,eol,start
set encoding=UTF-8

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
set guifont=Inconsolata\ for\ Powerline:h16
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'
"
"" airline symbols
"let g:airline_left_sep = ''
"let g:airline_left_alt_sep = ''
"let g:airline_right_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''


let g:airline_symbols.space="\ua0"
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

" Disable arrows for navigation
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
"

" Setup <Space> as <Leader> key
"
nnoremap <Space> <Nop>
map <Space> <Leader>


set updatetime=1000
set splitright
set background=dark
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set tabstop=4
set shiftwidth=4

autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 expandtab path+=node_modules
autocmd FileType typescript setlocal shiftwidth=2 tabstop=2 expandtab path+=node_modules
autocmd FileType json setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType sql setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=4 tabstop=4 expandtab

map <silent> <C-o> :NERDTreeToggle<CR>
" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

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

highlight clear SignColumn

" disable fmt on save
let g:go_fmt_autosave = 0

" Fix for NERDTree menu stuck in expanded mode after copying/moving files/dirs
" in the NERDTree's context menu
let g:NERDTreeMinimalMenu=1
