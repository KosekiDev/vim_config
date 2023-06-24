# My NVim config

Simple NVim config using lazy.vim as package manager.

You need install a nerd font : [Nerd Fonts](https://www.nerdfonts.com/)

After installation, do :checkhealth to check if you have all required dependencies.

## Util. keymaps

| Mode | Keymap      | Description                                                       |
| ---- | ----------- | ----------------------------------------------------------------- |
| n, v | `<leader>y` | Yank in system clipboard                                          |
| n    | `<leader>Y` | Yank from cursor to the end of the line in system clipboard       |
| n, v | `<leader>d` | Delete the selection/object in the black hole register            |
| x    | `<leader>p` | Delete the selection/object in the black hole register then paste |
| v    | `Y`         | Yank from cursor to end of line                                   |
| v    | `J`         | Move selection down                                               |
| v    | `K`         | Move selection up                                                 |
| n    | `<C-H>`     | Move cursor to the left window                                    |
| n    | `<C-L>`     | Move cursor to the right window                                   |
| n    | `<C-J>`     | Move cursor to the bottom window                                  |
| n    | `<C-K>`     | Move cursor to the top window                                     |

## [lazy.vim](https://github.com/folke/lazy.nvim)

| Mode | Keymap      | Description           |
| ---- | ----------- | --------------------- |
| n    | `<leader>l` | Open lazy-vim manager |

## [lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim/)

The purpose of this plugin is to bundle all the "boilerplate code" necessary to have nvim-cmp (a popular autocompletion plugin) and nvim-lspconfig working together. And if you opt in, it can use mason.nvim to let you install language servers from inside neovim.

| Mode | Keymap       | Description         |
| ---- | ------------ | ------------------- |
| n    | `<leader>cl` | LSP Info            |
| n    | `<leader>vd` | Line diagnostics    |
| n    | `<leader>cf` | Format Document     |
| v    | `<leader>cf` | Format Range        |
| n    | `<leader>ca` | Code Action         |
| n    | `<leader>cr` | Rename              |
| i    | `<C-H>`      | Signature Help      |
| n    | `gK`         | Signature Help      |
| n    | `gd`         | Goto definition     |
| n    | `gr`         | References          |
| n    | `K`          | Hover               |
| n    | `]d`         | Next Diagnostic     |
| n    | `[d`         | Previous Diagnostic |
| n    | `]e`         | Next Error          |
| n    | `[e`         | Previous Error      |
| n    | `]w`         | Next Warning        |
| n    | `[w`         | Previous Warning    |

## [Mason](https://github.com/williamboman/mason.nvim)

Portable package manager for Neovim that runs everywhere Neovim runs.
Easily install and manage LSP servers, DAP servers, linters, and formatters.

| Mode | Keymap       | Description        |
| ---- | ------------ | ------------------ |
| n    | `<leader>cm` | Open Mason manager |

## [Lazygit](https://github.com/kdheepak/lazygit.nvim)

Plugin for calling lazygit from within neovim.

| Mode | Keymap       | Description        |
| ---- | ------------ | ------------------ |
| n    | `<leader>gs` | Open Mason manager |

## [Neotest](https://github.com/nvim-neotest/neotest/)

| Mode | Keymap        | Description             |
| ---- | ------------- | ----------------------- |
| n    | `<leader>tv`  | Open summary panel      |
| n    | `<leader>tnr` | Run the nearest test    |
| n    | `<leader>tfr` | Run the current file    |
| n    | `<leader>ts`  | Stop the nearest test   |
| n    | `<leader>ta`  | Attach the nearest test |

In the summary panel, you have this commands :

| Mode | Key    | Description     |
| ---- | ------ | --------------- |
| n    | `a`    | Attach          |
| n    | `M`    | Clear mark      |
| n    | `T`    | Clear target    |
| n    | `d`    | Debug           |
| n    | `D`    | Debug marked    |
| n    | `<CR>` | Expand          |
| n    | `e`    | Expand all      |
| n    | `i`    | Jump into       |
| n    | `m`    | Mark            |
| n    | `J`    | Next failed     |
| n    | `o`    | Output          |
| n    | `K`    | Previous failed |
| n    | `r`    | Run             |
| n    | `R`    | Run marked      |
| n    | `O`    | Short           |
| n    | `u`    | Stop            |
| n    | `t`    | Target          |

## [Lualine](https://github.com/nvim-lualine/lualine.nvim)

A blazing fast and easy to configure Neovim statusline written in Lua.

## [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)

A file explorer for Neovim

| Mode | Key         | Description    |
| ---- | ----------- | -------------- |
| n    | `<leader>e` | Toggle Neotree |

In neo-tree :

| Key              | Description            |
| ---------------- | ---------------------- |
| `<C-]>`          | CD                     |
| `<C-e>`          | Open: In Place         |
| `<C-k>`          | Info                   |
| `<C-r>`          | Rename: Omit Filename  |
| `<C-t>`          | Open: New Tab          |
| `<C-v>`          | Open: Vertical Split   |
| `<C-x>`          | Open: Horizontal Split |
| `<BS>`           | Close Directory        |
| `<CR>`           | Open                   |
| `<Tab>`          | Open Preview           |
| `>`              | Next Sibling           |
| `<`              | Previous Sibling       |
| `.`              | Run Command            |
| `-`              | Up                     |
| `a`              | Create                 |
| `bd`             | Delete Bookmarked      |
| `bmv`            | Move Bookmarked        |
| `B`              | Toggle No Buffer       |
| `c`              | Copy                   |
| `C`              | Toggle Git Clean       |
| `[c`             | Prev Git               |
| `]c`             | Next Git               |
| `d`              | Delete                 |
| `D`              | Trash                  |
| `E`              | Expand All             |
| `e`              | Rename: Basename       |
| `]e`             | Next Diagnostic        |
| `[e`             | Prev Diagnostic        |
| `F`              | Clean Filter           |
| `f`              | Filter                 |
| `g?`             | Help                   |
| `gy`             | Copy Absolute Path     |
| `H`              | Toggle Dotfiles        |
| `I`              | Toggle Git Ignore      |
| `J`              | Last Sibling           |
| `K`              | First Sibling          |
| `m`              | Toggle Bookmark        |
| `o`              | Open                   |
| `O`              | Open: No Window Picker |
| `p`              | Paste                  |
| `P`              | Parent Directory       |
| `q`              | Close                  |
| `r`              | Rename                 |
| `R`              | Refresh                |
| `s`              | Run System             |
| `S`              | Search                 |
| `U`              | Toggle Hidden          |
| `W`              | Collapse               |
| `x`              | Cut                    |
| `y`              | Copy Name              |
| `Y`              | Copy Relative Path     |
| `<2-LeftMouse>`  | Open                   |
| `<2-RightMouse>` | CD                     |

## [mini.comment](https://github.com/echasnovski/mini.comment)

Easy comments

| Mode | Keymap | Description          |
| ---- | ------ | -------------------- |
| n    | `gcc`  | Comment current line |
| v    | `gc`   | Comment selection    |

## [mini.pairs](https://github.com/echasnovski/mini.pairs)

Autopair plugin (like "", '', (), {} etc...)

## [mini.ai](https://github.com/echasnovski/mini.ai)

It enhances some builtin textobjects, creates new ones, and allows user to create their own (like based on treesitter, and more).
Supports dot-repeat, v:count, different search methods, consecutive application, and customization via Lua patterns or functions.
Has builtins for brackets, quotes, function call, argument, tag, user prompt, and any punctuation/digit/whitespace character.

| Key | Description               |
| --- | ------------------------- |
| a   | Parameter/argument object |
| f   | Function object           |
| c   | Class object              |

Example :

vaf : Select around a function

vic : Select inside a class

daa : Delete a parameter

## [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)

Use treesitter to autoclose and autorename html tag.

## [noice.nvim](https://github.com/folke/noice.nvim)

Message plugin

| Mode | Keymap        | Description        |
| ---- | ------------- | ------------------ |
| n    | `<leader>snl` | Noice last message |
| n    | `<leader>snh` | Noice history      |
| n    | `<leader>sna` | Noice all          |
| n    | `<C-F>`       | Scroll forward     |
| n    | `<C-B>`       | Scroll backward    |

## [nvim-notify](https://github.com/rcarriga/nvim-notify)

Notification manager

| Mode | Keymap       | Description              |
| ---- | ------------ | ------------------------ |
| n    | `<leader>nd` | Delete all notifications |

## [nui.nvim](https://github.com/MunifTanjim/nui.nvim)

Ui component library

## [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

The goal of nvim-treesitter is both to provide a simple and easy way to use the interface for tree-sitter in Neovim and to provide some basic functionality such as highlighting based on it.

## [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)

Syntax aware text-objects, select, move, swap, and peek support.

| Mode | Keymap | Description                   |
| ---- | ------ | ----------------------------- |
| n    | `]f`   | Go to next start function     |
| n    | `]F`   | Go to next end function       |
| n    | `[f`   | Go to previous start function |
| n    | `[F`   | Go to previous end function   |

## [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)

A neovim plugin to persist and toggle multiple terminals during an editing session

| Mode | Keymap  | Description     |
| ---- | ------- | --------------- |
| n    | `<C-\>` | Toggle terminal |

## [undotree](https://github.com/mbbill/undotree)

Undotree visualizes the undo history and makes it easy to browse and switch between different undo branches.

| Mode | Keymap      | Description   |
| ---- | ----------- | ------------- |
| n    | `<leader>u` | Open Undotree |

## [vim-repeat](https://github.com/tpope/vim-repeat)

If you've ever tried using the . command after a plugin map, you were likely disappointed to discover it only repeated the last native command inside that map, rather than the map as a whole. That disappointment ends today. Repeat.vim remaps . in a way that plugins can tap into it.

## [vim-surround](https://github.com/tpope/vim-surround)

Surround.vim is all about "surroundings": parentheses, brackets, quotes, XML tags, and more. The plugin provides mappings to easily delete, change and add such surroundings in pairs.

## [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

Lua snippets plugin

## [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)

Snippets collection for a set of different programming languages.

## [dressing.nvim](https://github.com/stevearc/dressing.nvim)

Pimp ui

## [Catppuccin](https://github.com/catppuccin/nvim)

This port of Catppuccin is special because it was the first one and the one that originated the project itself. Given this, it's important to acknowledge that it all didn't come to be what it is now out of nowhere. So, if you are interested in knowing more about the initial stages of the theme, you can find it under the v0.1 tag

## [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)

Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.

## [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)

A completion engine plugin for neovim written in Lua.

| Mode | Keymap      | Description     |
| ---- | ----------- | --------------- |
| n    | `<C-f>`     | Scroll forward  |
| n    | `<C-b>`     | Scroll backward |
| n    | `<C-Space>` | Complete        |
| n    | `<C-e>`     | Abort           |
| n    | `<CR>`      | Confirm         |

## [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

Telescope.nvim is a highly extendable fuzzy finder over lists. Built on the latest awesome features from neovim core. Telescope is centered around modularity, allowing for easy customization.

| Mode | Keymap       | Description              |
| ---- | ------------ | ------------------------ |
| n    | `<leader>ff` | Find files               |
| n    | `<leader>:`  | Command history          |
| n    | `<leader>fb` | Files Buffers            |
| n    | `<leader>,`  | Switch Buffers           |
| n    | `<leader>fr` | Recents                  |
| n    | `<leader>sd` | Diagnostics              |
| n    | `<leader>sD` | Diagnostics in workspace |
| n    | `<leader>fg` | Grep                     |
| n    | `<leader>sh` | Help pages               |
| n    | `<leader>sH` | Search Highlight groups  |
| n    | `<leader>sk` | Key Maps                 |
| n    | `<leader>sM` | Man Pages                |
| n    | `<leader>sm` | Jump to Mark             |
| n    | `<leader>ss` | Goto symbol              |
| n    | `<leader>sS` | Goto symbol in workspace |

## [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

Todo-comments is a lua plugin for Neovim 0.5 to highlight and search for todo comments like TODO, HACK, BUG in your code base.

| Mode | Keymap       | Description           |
| ---- | ------------ | --------------------- |
| n    | `]t`         | Next todo comment     |
| n    | `[t`         | Previous todo comment |
| n    | `<leader>st` | Todo                  |
| n    | `<leader>sT` | Todo/Fix/Fixme        |

## [auto-dark-mode](https://github.com/f-person/auto-dark-mode.nvim)

A Neovim plugin for macOS that automatically changes the editor appearance based on system settings.
