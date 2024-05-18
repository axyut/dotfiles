return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VimEnter", -- Use a suitable event such as VimEnter to ensure lualine initializes correctly
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            -- Function to get the current recording key
            local function get_recording_key()
                local recording_register = vim.fn.reg_recording()
                return recording_register ~= "" and ("Recording: " .. recording_register) or ""
            end
            local function totalines()
                return vim.fn.line("$")
            end

            require("lualine").setup({
                options = {
                    theme = "tokyonight", -- Replace 'tokyonight' with your desired lualine theme
                    disabled_filetypes = {
                        "alpha",
                        --"neo-tree",
                        "Outline",
                        "spectre_panel",
                        "Trouble",
                        "undotree",
                    },
                },
                sections = {
                    lualine_b = { -- Bottom section
                        get_recording_key, -- Include the custom function directly
                        totalines,
                    },
                },
            })
        end,
    },
}
