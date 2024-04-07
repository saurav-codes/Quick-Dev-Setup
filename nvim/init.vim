" Set the leader key to space
let mapleader = " "

" Basic settings
set relativenumber  " Show relative line numbers
set number          " Show the actual number for the current line
set noswapfile      " Disable swap files
set undofile        " Enable persistent undo
set incsearch       " Incremental search
set hidden          " Allow buffer switching without saving
set nowrap


" Key bindings for save and save & quit
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>
nnoremap <C-q> :wq<CR>


" For Mac users: To make Ctrl-s and Ctrl-q work, you might need to disable
" the start and stop output control in the terminal by adding 'stty -ixon'
" in your shell configuration file (.bashrc, .zshrc, etc.)

" Additional basic settings and plugins can be added here as per your need
" Map 'jj' to exit insert mode
inoremap jj <Esc>

call plug#begin('~/.config/nvim/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'
" Autocomplete
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'raimon49/requirements.txt.vim'
Plug 'Mofiqul/vscode.nvim'
Plug 'github/copilot.vim'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'mattn/emmet-vim'
Plug 'chriskempson/base16-vim'
Plug 'numToStr/Comment.nvim'
Plug 'kyazdani42/nvim-web-devicons'  " optional, for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'p00f/nvim-ts-rainbow'

Plug 'akinsho/bufferline.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
Plug 'lewis6991/gitsigns.nvim'
Plug 'wellle/context.vim'
Plug 'folke/tokyonight.nvim'
Plug 'catppuccino/nvim'

" Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

call plug#end()

" Set up LSP and Autocomplete
lua << EOF
require('lspconfig').pyright.setup{}
require('lspconfig').rust_analyzer.setup{}

local cmp = require'cmp'
cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  })
})
EOF

lua << EOF
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.ruff.with({
            extra_args = {}, -- Optional: Specify your ruff config file here
        }),
    },
})
EOF

lua << EOF
require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
			"node_modules",".git/","venv","env"
		}
    }
}
require('telescope').load_extension('fzf')
EOF

nnoremap <leader>f :Telescope find_files hidden=true<CR>
nnoremap <leader>fw :Telescope live_grep<CR>


" Remember last position in file
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif


" DJlint for linting django html files

lua << EOF
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.diagnostics.djlint,
        -- Add other sources as needed
    },
})
EOF

let g:user_emmet_settings = {
\  'html' : {
\    'extends' : 'html',
\  },
\}

" Close current buffer
nnoremap <C-w> :bd<CR>

" Navigate between buffers
nnoremap <S-h> :bprevious<CR>
nnoremap <S-l> :bnext<CR>

lua << EOF
require'nvim-tree'.setup {
    -- Your configuration comes here
    -- or leave it empty to use the default settings
    -- Refer to the documentation for more info
}
EOF

nnoremap <leader>e :NvimTreeToggle<CR>



" Navigate to the left split (or sidebar if present)
nnoremap <C-h> :wincmd h<CR>

" Navigate to the down split
nnoremap <C-j> :wincmd j<CR>

" Navigate to the up split
nnoremap <C-k> :wincmd k<CR>

" Navigate to the right split
nnoremap <C-l> :wincmd l<CR>


lua << EOF
require('bufferline').setup {
  options = {
    diagnostics = "nvim_lsp",  -- this will show LSP diagnostics in the bufferline
    offsets = {{
      filetype = "NvimTree",
      text = "File Explorer",
      highlight = "Directory",
      text_align = "left"
    }}
  }
}
EOF

nnoremap <C-w> :confirm bd<CR>

" Set the theme
colorscheme moonfly

" Override the highlight for LSP diagnostics 'Hint' category, often used for unused variables
highlight DiagnosticHint guifg=#ff0000 ctermfg=1

lua << EOF
require'lspconfig'.pyright.setup{
  on_attach = function(client, bufnr)
    -- other setup code
    vim.diagnostic.config({
      underline = true,
      virtual_text = {
        spacing = 4,
        prefix = '●'  -- This could be any character of your choice
      },
      signs = true,
      update_in_insert = false,
    })
    -- Set key bindings
    local opts = { noremap=true, silent=true }
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua require("telescope.builtin").lsp_references()<CR>', { noremap=true, silent=true })
  end,
}
EOF

nnoremap gl <cmd>lua vim.diagnostic.open_float()<CR>
nnoremap gk :lua vim.lsp.buf.hover()<CR>


lua << EOF
require('Comment').setup()
require('gitsigns').setup()
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "lua", "vim", "vimdoc", "query", "html", "python", "rust", "json", "javascript", "css" },

  rainbow = {
    enable = true,
    -- other options
  },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- List of parsers to ignore installing (or "all")
  ignore_install = { },

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,

    -- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
    -- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
    -- the name of the parser)
    -- list of language that will be disabled
    -- disable = { "c", "rust" },
    -- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}



EOF

let g:context_add_mappings = 0

function! GrepWordUnderCursor()
    let word = expand('<cword>')
    execute 'Telescope live_grep default_text=' . word
endfunction

nnoremap <leader>g :call GrepWordUnderCursor()<CR>

