require("tokyonight").setup({
  style = "storm",
  transparent = false,
  terminal_colors = true,
})
local colorscheme = "tokyonight"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

require("transparent").setup({
  enable = true, -- boolean: enable transparent
})
