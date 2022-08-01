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

set splitbelow
set splitright

" show line break
set ffs=unix
set encoding=utf-8
set fileencoding=utf-8
set listchars=eol:¶
set list

" nvim 0.7
" enable global statusline
set laststatus=3

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
" Custom rg command to ignore .git directory
nnoremap <leader>ff <cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,--glob,!.git<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fs <cmd>Telescope grep_string<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fm <cmd>Telescope man_pages<cr>
nnoremap <leader>fc <cmd>Telescope colorscheme<cr>
" Q: where do the oldfiles list kept?
" nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
nnoremap <C-\> <cmd>:NERDTreeToggle<cr>
nnoremap <leader>gb <cmd>Git blame<cr>
nnoremap <leader>gs <cmd>Git status<cr>
" to reload init.vim without restarting:
nnoremap <leader>sv :source $MYVIMRC<cr>
" split shortcuts
nnoremap <leader>sp :split<cr>
nnoremap <leader>vs :vsplit<cr>

