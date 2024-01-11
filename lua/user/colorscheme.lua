local M = {
--    "LunarVim/darkplus.nvim",
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
-- vim.cmd.colorscheme "darkplus"
    require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        background = { -- :h background
            light = "latte",
            dark = "mocha",
        },
    })
    vim.cmd.colorscheme "catppuccin"
end

return M
