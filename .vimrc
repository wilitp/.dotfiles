set number
set mouse=a
set breakindent
set numberwidth=1
set clipboard=unnamed
set background=dark
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set tabstop=2 shiftwidth=2 expandtab
set relativenumber
set laststatus=2
set noswapfile
filetype plugin on
set omnifunc=syntaxcomplete#Complete


call plug#begin('~/.vim/plugged')


" Emmet and completion
Plug 'mattn/emmet-vim'
Plug 'alvan/vim-closetag'


" Themes
Plug 'joshdick/onedark.vim'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }

"Line comment plugin
" Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'


"File Tree
Plug 'preservim/nerdtree'

"Ts syntax
Plug 'HerringtonDarkholme/yats.vim'

" Styled components
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }


" Language support
Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax

Plug 'prabirshrestha/vim-lsp' 	  " Idk
Plug 'christoomey/vim-tmux-navigator' "Navigation between window splits
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'


call plug#end()

" coc config
let g:coc_global_extensions = [ 'coc-css', 'coc-python', 'coc-tailwindcss', 'coc-tslint', 'coc-prettier', 'coc-emmet', 'coc-pairs', 'coc-tsserver']

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Activate bracket pair colors
let g:rainbow_active = 1

colorscheme onedark



" nmap <Leader>nt: NERDTreeFind<CR>
nnoremap <esc> :noh<return><esc>

" NERDCommenter
nnoremap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

" Save on ctrl-s
nnoremap <C-S> :update<cr>

" Delete whole word
noremap <C-BS> <C-W>

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1


let g:gruvbox_contrast_dark = "dark"
autocmd FileType javascriptreact let b:coc_pairs_disabled = ['<']
autocmd FileType typescript let b:coc_pairs_disabled = ['<']
let g:user_emmet_settings = {
  \  'javascriptreact' : {
    \      'extends' : 'jsx',
    \  },
  \}
