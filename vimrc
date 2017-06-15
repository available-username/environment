set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on


" Syntax highlighting
syntax on

" Display line numbers
set nu

" Change color scheme
set background=dark

" Highlight the current line
set cursorline

" Set spaces instead of tabs
set smartindent
set tabstop=4
set shiftwidth=4

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Powerline setup
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2

Bundle 'scrooloose/nerdtree'

" Nerdtree setup
map <F2> :NERDTreeToggle<CR>

Bundle 'klen/python-mode'

