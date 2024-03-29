local M = {
  "williamboman/mason-lspconfig.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    "nvim-lua/plenary.nvim",
  },
}

M.servers = {
    "lua_ls",
    "zls",
    "rust_analyzer"
}

function M.config()
    require("mason").setup {
        ui = {
            border = "rounded",
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
    }
    require("mason-lspconfig").setup {
        ensure_installed = M.servers,
    }
end

return M
