# NeoVim Configuration for Django and Rust Development

This configuration is tailored for a developer working with Django and Rust on macOS, providing a lightweight and efficient setup. It includes basic settings, keybindings, and plugins to enhance productivity and ease the development process.

## Basic Configuration

- Leader key set to space for efficient use of shortcuts.
- Relative and absolute line numbers enabled for easy navigation.
- Swap files are disabled to prevent unwanted caching.
- Persistent undo and incremental search are enabled for better editing experience.
- Buffer switching without the need to save is allowed with `set hidden`.

## Key Bindings

- `<C-s>` is mapped to save the current buffer.
- `<C-q>` is mapped to save and quit the current buffer.
- `jj` is mapped to exit insert mode, providing a quick way to switch to normal mode.

## Plugin Configuration

- `neovim/nvim-lspconfig` for LSP support.
- `hrsh7th/nvim-cmp` for autocompletion with LSP sources.
- `morhetz/gruvbox`, `dracula/vim`, and `Mofiqul/vscode.nvim` for theme choices.
- `nvim-telescope/telescope.nvim` for fuzzy file finding and more.
- `kyazdani42/nvim-tree.lua` for file explorer sidebar.
- `akinsho/bufferline.nvim` for enhanced buffer navigation.
- `L3MON4D3/LuaSnip` and `saadparwaiz1/cmp_luasnip` for code snippets.

## LSP Setup

- Python and Rust support is configured with `pyright` and `rust_analyzer`.
- Autocomplete setup includes a mix of buffer, path, and LSP completions.
- Diagnostics from LSP are displayed with virtual text and signs.

## Telescope

- Customized to ignore patterns such as `node_modules`, `.git/`, `venv`, and `env`.
- Find files with `<leader>f` which includes hidden files but respects `.gitignore`.

## Remember Last Position

- When reopening files, the cursor jumps back to the last position.

## Navigation

- Use `<C-w>` to close the current buffer.
- Navigate between buffers with `<S-h>` and `<S-l>`.
- `<leader>e` toggles the file explorer.
- Use `<C-h>`, `<C-j>`, `<C-k>`, and `<C-l>` for window navigation.

## Diagnostics and Definitions

- `gd` to jump to the definition.
- `gr` to show references using Telescope.
- `gi` to navigate to the previous diagnostic.
- `gl` to navigate to the next diagnostic.

## Theme

- The `moonfly` colorscheme is set for a pleasant coding environment.
- Unused variable hints are highlighted with a contrasting color.

## Requirements

- NeoVim (0.7+ recommended)
- Appropriate Neovim GUI for macOS or terminal that supports GUI features.
- All the plugins listed must be installed using a plugin manager like `vim-plug`.

## Installation

Copy the contents of the provided `init.vim` into your `~/.config/nvim/init.vim` file.

Run `:PlugInstall` in NeoVim to install the configured plugins.

