return {
    settings = {
        Lua = {
            format = {
                enable = false,
            },
            diagnostics = {
                globals = { "vim", "spec" },
                undefined_global = false, -- remove this from diag!
                missing_parameters = false, -- missing fields :)
                disable = {"missing-parameters", "missing-fields"},
            },
            runtime = {
                version = "LuaJIT",
                special = {
                    spec = "require",
                },
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    [vim.fn.expand "$VIMRUNTIME/lua"] = true,
                    [vim.fn.stdpath "config" .. "/lua"] = true,
                },
            },
            telemetry = {
                enable = false,
            },
        },
    },
}
