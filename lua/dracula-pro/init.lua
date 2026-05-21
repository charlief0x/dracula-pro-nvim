local M = {}

function M.load(variant)
  variant = variant or "dracula_pro"

  local palette = require("dracula-pro.palette")
  local c = palette.variants[variant]
  if not c then
    vim.notify("dracula-pro: unknown variant '" .. variant .. "'", vim.log.levels.ERROR)
    return
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background = variant == "alucard" and "light" or "dark"
  vim.g.colors_name = variant

  local highlights = require("dracula-pro.highlights").setup(c)
  for group, spec in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, spec)
  end

  -- Terminal colors
  for i = 0, 15 do
    local key = "color_" .. i
    if c[key] then
      vim.g["terminal_color_" .. i] = c[key]
    end
  end
end

return M
