-- Basic settings that work in both Neovim and VSCode
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

-- Clipboard works in both environments
vim.opt.clipboard = "unnamedplus"

-- Filetype detection only needed in regular Neovim
if not vim.g.vscode then
    vim.filetype.add({
        extension = {
            cl = 'opencl',
        }
    });
end
