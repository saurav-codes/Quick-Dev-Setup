# NeoVim Configuration

This is my personal NeoVim setup that focuses on simplicity and performance, moving away from VS Code for a faster coding experience.
But still i keep VS Code for specific stuff

## Features

- **Leader Key**: Space is set as the leader key for more efficient use of shortcuts.
- **Basic Settings**: Includes line numbers, persistent undo, and incremental search without swap files.
- **Buffer Management**: Easily switch between buffers and close them without saving.
- **Autocomplete**: Configured with `nvim-cmp` for intelligent code completion.
- **Language Server Protocol**: Uses `nvim-lspconfig` for rich language features like go-to-definition (`gd`) and finding references (`gr`).
- **Telescope**: Enhanced fuzzy finding across files, ignoring patterns like `node_modules`, `.git/`, `venv`, and `env`.
- **Aesthetics**: A minimalistic theme setup with `moonfly` for a pleasant coding environment.
- **Diagnostics**: LSP diagnostics set up to display with underlines and virtual text.

## Key Bindings

- Save: `<C-s>`
- Save & Quit: `<C-q>`
- Exit Insert Mode: `jj`
- Open File Explorer: `<leader>e`
- Search Files: `<leader>f`
- Close Buffer: `<C-w>`
- Navigate Buffers: `<S-h>` and `<S-l>`

## Plugins

- `nvim-lspconfig`: Configures the LSP.
- `nvim-cmp`: Autocomplete setup.
- `Telescope`: For fuzzy file finding.
- `nvim-tree.lua`: File explorer tree.
- `bufferline.nvim`: Tab-like buffer line with diagnostic integration.
- Various themes and tools to enhance the visual experience and functionality.

## Language Servers

- `pyright`: For Python support.
- `rust_analyzer`: For Rust support.

## Installation

To use this configuration:

1. Clone this repository into your `~/.config/nvim` directory.
2. Open NeoVim and run `:PlugInstall` to install the plugins.
3. Enjoy your coding!

## Customization

Feel free to fork this repository and adjust the `init.vim` to suit your preferences.

Happy Coding!

