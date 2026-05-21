# dracula-pro-nvim

Neovim colorscheme for [Dracula PRO](https://draculatheme.com/pro) — a premium dark theme by Zeno Rocha.

> **Note:** Dracula PRO is a paid theme. You must purchase a license at [draculatheme.com/pro](https://draculatheme.com/pro) to use it.

## Variants

| Name                   | Background | Accent     |
| ---------------------- | ---------- | ---------- |
| `dracula_pro`          | `#22212C`  | purple     |
| `dracula_pro_blade`    | `#212C2A`  | teal       |
| `dracula_pro_buffy`    | `#2A212C`  | pink       |
| `dracula_pro_lincoln`  | `#2C2A21`  | yellow     |
| `dracula_pro_morbius`  | `#2C2122`  | red        |
| `dracula_pro_van_helsing` | `#0B0D0F` | blue-grey |
| `alucard`              | `#F5F5F5`  | light      |

## Requirements

- Neovim 0.8+
- `termguicolors` enabled

## Installation

### lazy.nvim

```lua
{
  "charlief0x/dracula-pro-nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd("colorscheme dracula_pro")
  end,
}
```

### LazyVim

```lua
-- lua/plugins/colorscheme.lua
return {
  {
    "charlief0x/dracula-pro-nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dracula_pro",
    },
  },
}
```

### packer.nvim

```lua
use {
  "charlief0x/dracula-pro-nvim",
  config = function()
    vim.cmd("colorscheme dracula_pro")
  end,
}
```

## Switching variants

```lua
vim.cmd("colorscheme dracula_pro_buffy")
```

Or via the Lua API:

```lua
require("dracula-pro").load("dracula_pro_buffy")
```
