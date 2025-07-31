return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            {
                "Saghen/blink.cmp"
            },
            {
                "folke/lazydev.nvim",
                ft = "lua", -- only load on lua files
                opts = {
                    library = {
                        -- See the configuration section for more details
                        -- Load luvit types when the `vim.uv` word is found
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            }
        },
        config = function()
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            require("lspconfig").lua_ls.setup { capabilities }

            require('lspconfig').csharp_ls.setup {}

            require('lspconfig').texlab.setup {}

            require('lspconfig').clangd.setup {
                filetypes = { "c", "cpp", "objc", "objcpp", "cuda" },
            }

            require('lspconfig').opencl_ls.setup {}

            require('lspconfig').pylsp.setup {}

            require('lspconfig').ts_ls.setup {}


            require('lspconfig').rust_analyzer.setup {
                capabilities = capabilities,
                settings = {
                    ["rust-analyzer"] = {
                        imports = {
                            granularity = {
                                group = "module",
                            },
                            prefix = "self",
                        },
                        cargo = {
                            buildScripts = {
                                enable = true,
                            },
                        },
                        procMacro = {
                            enable = true
                        },
                    }
                }
            }
        end,
    }
}
