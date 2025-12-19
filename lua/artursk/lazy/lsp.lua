-- Disable LSP in VSCode (VSCode has its own LSP)
if vim.g.vscode then
    return {}
end

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

            vim.lsp.config('lua_ls', { capabilities = capabilities })

            vim.lsp.config('clangd', { filetypes = { "c", "cpp", "objc", "objcpp", "cuda" } })

            vim.lsp.config('rust_analyzer',
                {
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
                })

            vim.lsp.enable({
                'lua_ls',
                'csharp_ls',
                'texlab',
                'clangd',
                'opencl_ls',
                'pylsp',
                'ts_ls',
                'rust_analyzer',
                'basedpyright'
            })
        end,
    }
}
