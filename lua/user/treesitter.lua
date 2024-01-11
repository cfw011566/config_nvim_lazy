local M = {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    build = ":TSUpdate",
}
function M.config()
    require("nvim-treesitter.configs").setup {
        --    ensure_installed = { "c", "lua", "zig" }, -- put the language you want in this array
        ensure_installed = { "c", "zig" }, -- put the language you want in this array
        ignore_install = { "" },
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false,
        },
        indent = { enable = true },
    }
end

return M
