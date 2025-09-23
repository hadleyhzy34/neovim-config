# My LazyVim Configuration

This is my personal LazyVim configuration. It's based on the LazyVim starter, but with a few personalizations to make it my own.

## Overview

This configuration is designed for a smooth and efficient development workflow. It includes a custom theme, keymaps, and a selection of plugins for debugging, code generation, and more.

## Installation

1.  Clone this repository to `~/.config/nvim`.
2.  Start Neovim. Lazy.nvim will automatically install the plugins.

## Keymaps

This configuration includes several custom keymaps to streamline common tasks.

| Keybinding      | Description                  |
| --------------- | ---------------------------- |
| `+` / `-`       | Increment/decrement numbers  |
| `<C-a>`         | Select all text              |
| `<C-m>`         | Jump forward in the jumplist |
| `te`            | New tab                      |
| `<tab>`/`<s-tab>` | Next/previous tab            |
| `ss` / `sv`     | Split window (horizontal/vertical) |
| `s` + `h/j/k/l` | Move between windows         |
| `<C-w>` + arrow | Resize window                |
| `sa`            | Add surroundings             |
| `sr`            | Replace surroundings         |
| `sd`            | Delete surroundings          |

## Plugins

This configuration includes the following plugins:

*   **[night-owl](https://github.com/haishanh/night-owl.vim):** The colorscheme.
*   **[nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui):** A UI for the Neovim Debug Adapter Protocol.
*   **[neogen](https://github.com/danymat/neogen):** A tool for generating annotations.
*   **[nvim-surround](https://github.com/kylechui/nvim-surround):** A plugin for managing surrounding characters.
*   **[todo-comments.nvim](https://github.com/folke/todo-comments.nvim):** A plugin for highlighting and searching for TODO comments.

### Debugging

This configuration includes a detailed debugging setup using `nvim-dap-ui`.

| Keybinding      | Description                  |
| --------------- | ---------------------------- |
| `<leader>db`    | Toggle breakpoint            |
| `<leader>dn`    | Step over                    |
| `<leader>di`    | Step into                    |
| `<leader>do`    | Step out                     |
| `<leader>dc`    | Continue                     |
| `<leader>dx`    | Terminate                    |
| `<leader>ds`    | Load `launch.json`           |
| `<leader>du`    | Toggle DAP UI                |
| `<leader>de`    | Evaluate expression under cursor |
| `<leader>dR`    | Open and focus REPL          |
| `<leader>dv`    | View scopes (float)          |
| `<leader>dC`    | View console (float)         |
| `<leader>dB`    | View breakpoints (float)     |
| `<leader>dT`    | View stacks (float)          |
| `<leader>dw`    | View watches (float)         |

### Code Generation

This configuration uses `neogen` to generate annotations for Python, C, and C++.

| Keybinding   | Description                |
| ------------ | -------------------------- |
| `<leader>cc` | Generate annotation        |

## Language Support

This configuration includes support for the following languages through LazyVim extras:

*   JSON
*   Python
*   TypeScript/JavaScript (with ESLint and Prettier)
*   Tailwind CSS
*   C/C++ (with clangd)
*   Markdown