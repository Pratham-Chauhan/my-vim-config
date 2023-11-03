call plug#begin('~/.local/share/nvim/plugged')
" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'Mofiqul/vscode.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" nvim-cmp autocompletion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nvim-ufo
Plug 'kevinhwang91/promise-async'
Plug 'kevinhwang91/nvim-ufo'

Plug 'numToStr/FTerm.nvim'
Plug 'onsails/lspkind.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'dccsillag/magma-nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'sbdchd/neoformat'
Plug 'Pocco81/auto-save.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'RRethy/vim-illuminate'
" file explorer
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
call plug#end()

set number
set relativenumber
set nowrap
set clipboard+=unnamedplus

set guifont=Hack:h14

" Magma Jupyter Notebook
" nnoremap <silent><expr> <LocalLeader>r  :MagmaEvaluateOperator<CR>
nnoremap <silent>       <LocalLeader>rr :MagmaEvaluateLine<CR>
xnoremap <silent>       <LocalLeader>r  :<C-u>MagmaEvaluateVisual<CR>
nnoremap <silent>       <LocalLeader>rc :MagmaReevaluateCell<CR>
nnoremap <silent>       <LocalLeader>rd :MagmaDelete<CR>
nnoremap <silent>       <LocalLeader>ro :MagmaShowOutput<CR>

let g:magma_automatically_open_output = v:false
" let g:magma_image_provider = "ueberzug"

nnoremap pp :e $MYVIMRC<CR>
nnoremap _u :w \|source $MYVIMRC<CR>
nnoremap <silent> <C-B> :Buffers<CR>
nnoremap <silent> <C-F> :Files<CR>
nnoremap <silent> <C-H> :History<CR>

autocmd FileType python map <buffer> <F5> :w<CR>:!python3 %<CR>
autocmd FileType python imap <buffer> <F5> <esc>:w<CR>:!python3 %<CR>
set background=dark    " Setting dark mode
set tabstop=4
set shiftwidth=4
set expandtab


let g:gruvbox_italic = 1
let g:gruvbox_underline = 1
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_number_column = 'bg0'

let g:airline_theme='dark'

" Initiate Lua
lua require'init'

colorscheme tokyonight-night
