call plug#begin('~/.config/nvim/autoload/plugged')

" vim nightfly
"Plug 'bluz71/vim-nightfly-colors'

" hexokinase
" Plug 'rrethy/vim-hexokinase'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'glepnir/dashboard-nvim'

call plug#end()
