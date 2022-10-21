--[[ require("tokyonight").setup({ ]]
--[[   style = "storm", ]]
--[[   transparent = true, ]]
--[[   terminal_colors = true, ]]
--[[ }) ]]
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])
--[[ local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme) ]]
--[[ if not status_ok then ]]
--[[   vim.notify("colorscheme " .. colorscheme .. " not found!") ]]
--[[   return ]]
--[[ end ]]

--[[ require("transparent").setup({ ]]
--[[   enable = true, -- boolean: enable transparent ]]
--[[ }) ]]
