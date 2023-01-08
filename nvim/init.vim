"""""""""""""""""""""""""""""""
"         NeoVim Init         "
"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
"=> UI Config
"""""""""""""""""""""""""""""""
" fix splits
set splitbelow splitright

" show line number}
set relativenumber
set number

set scrolloff=7

" gui colors
set termguicolors
	
" status bar
set laststatus=2

"""""""""""""""""""""""""""""""
"=> Misc. Config
"""""""""""""""""""""""""""""""

" Remove f1 help
nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>

" fix tab to 4 spaces
set tabstop=4
set shiftwidth=4

"""""""""""""""""""""""""""""""
"=> Keybinds
"""""""""""""""""""""""""""""""

" Remaps splits to <ctrl> + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Adjust split sizes with 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Open terminal in vertical split
map <Leader>tt :vnew term://zsh<CR>

" Open terminal in horizontal split
map <Leader>TT :new term://zsh<CR>

" Clear last search
:command Cls let @/ = ""

"""""""""""""""""""""""""""""""
"=> Plugins
"""""""""""""""""""""""""""""""

" Hexokinase settings
let g:Hexokinase_refreshEvents = ['InsertLeave']

let g:Hexokinase_optInPatterns = [
\     'full_hex',
\     'triple_hex',
\     'rgb',
\     'rgba',
\     'hsl',
\     'hsla',
\     'colour_names'
\ ]

let g:Hexokinase_highlighters = ['backgroundfull']

autocmd VimEnter * HexokinaseTurnOn

source $HOME/.config/nvim/vim-plug/plugins.vim
