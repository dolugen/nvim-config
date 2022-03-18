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
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" Telescope requires plenary to function
Plug 'nvim-lua/plenary.nvim'
" The main Telescope plugin
Plug 'nvim-telescope/telescope.nvim'
" An optional plugin recommended by Telescope docs
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }

Plug 'tpope/vim-fugitive'
" show changes as pipes in the left column
"Plug 'lewis6991/gitsigns.nvim'
" show changes as plus, tilde, etc.
Plug 'airblade/vim-gitgutter'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'

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
" C-p was already bound for Zellij
nnoremap <C-f> :Telescope find_files<Cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <C-\> <cmd>:NERDTreeToggle<cr>
