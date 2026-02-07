--[[
-- Using Mason for LSPs / Linters and other
--]]

CONFIG = "java"
Name = vim.fn.expand("$USER")

require("config.lazy")


if vim.fn.has('wsl') == 1 then
    require('user.wslSetup').load()
end


-- Tabs appearance
vim.cmd [[set autoindent]]
vim.cmd [[set expandtab]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]

---- Colourscheme tokyonight by folke
vim.cmd [[colorscheme tokyonight]]

-- For the default windows selection stuff

-- Enable line numbers  
vim.wo.number = true
---- General vim
vim.cmd [[set clipboard +=unnamed]]
vim.cmd [[set clipboard +=unnamedplus]]
vim.o.signcolumn = "yes"


vim.cmd [[set keymodel=startsel,stopsel]]
---- In-Editor shortcuts
-- General file shortcuts

vim.keymap.set('n','<C-s>', ':w<CR>',{noremap=true})
vim.keymap.set('i','<C-s>', '<ESC>:w<CR>i<right>',{remap=true})
vim.keymap.set('t','<ESC>', '<C-\\><C-n>')

---- Neotree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n','<A-f>',':Neotree reveal<CR> :Neotree focus<CR>',{})

-- Load custom shortucts
require('user.config').load()
require('user.git').load()
require('user.term').load()
require('user.lspSetup').load()
-- Show full diagnostics

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        source = 'always',
    },
    severity_sort = true,
})
