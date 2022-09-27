# Yiannis NEOVIM Config

This is my NeoVim config that turns neovim from a tool to a gigachad tool.

# Instructions

Follow Plug instructions to get it setup.

Run `:PlugInstall` to install all the plugins.

Run `npm i -g pyright` to install language server.

Previously had the following language servers installed:

* ltex

To access language server installer run:

`:Mason`

# File Structure

`init.vim` is the initail script executed.
1. Loads Vim-Plug
2. Loads one file in `themes` that will theme neovim.
3. Manually loads the Mason plugin and then the Mason Lsp Config plugin due to it being required.
4. Further neovim configuration.

`themes` is a directory containing custom themes, the currently active theme is sourced from the `init.vim` script.

`plugin` directory that contains specific plugin init code. Each file is named after the plugin it configures. Some
notable plugin files:
* `cmp.lua` contains the init code for the Lsp individual servers since they need to be configured after CMP is setup.
  Make sure to add the init code into this file when installing a new Lsp server.
* `lspconfig.lua` contains the init code for Lsp along with keybindings for using Lsp.

`ftplugin` is a directory that contains initialization code that is specific to filetypes.

`vim-plug` contains the file that loads all the plugins.

`autoload` is the directory that Plug resides in and installs all plugins into.

# TODO

* Better key-bindings for Lsp
* Add a user dictionary for use with `ltex-ls`. (I suspect that the server contains a bug that does not allow for this
  feature to be used correctly.)

