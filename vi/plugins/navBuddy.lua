return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim",
            },
            opts = { lsp = { auto_attach = true } },
            keys = {
                {
                    "<leader>nv",
                    "<cmd>Navbuddy<cr>",
                    desc = "Navigation of functions and vars in file.",
                },
            },
        },
    },
    -- your lsp config or other stuff
}
