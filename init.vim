" Better colors
set termguicolors

" adds line numbers
set number
set relativenumber

" columns used for the line number
set numberwidth=4

" start scrolling when 8 lines from top or bottom
set scrolloff=8

" Enable mouse support
set mouse=a

" case insensitive search unless capital letters are used
set ignorecase
set smartcase

" hide mode because lightline shows it
set noshowmode


call plug#begin('~/.config/nvim/plugged')

" plugins will go here
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'itchyny/lightline.vim'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

call plug#end()

lua require('dolugen')

" declare your color scheme
colorscheme dracula
" Use this for dark color schemes
set background=dark

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
