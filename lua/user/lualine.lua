local M = {
  "nvim-lualine/lualine.nvim",
}

function M.config()

  require("lualine").setup {
    options = {
      -- component_separators = { left = "", right = "" },
      -- section_separators = { left = "", right = "" },
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },

      ignore_focus = { "NvimTree" },
    },
    sections = {
      -- lualine_a = { {"branch", icon =""} },
      -- lualine_b = { diff },
      -- lualine_c = { "diagnostics" },
      -- lualine_x = { copilot },
      -- lualine_y = { "filetype" },
      -- lualine_z = { "progress" },
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = { },
      lualine_x = { "diagnostics" },
      lualine_y = { "filetype" },
      lualine_z = { "progress" },
    },
    extensions = { "quickfix", "man", "fugitive" },
  }
end

return M
