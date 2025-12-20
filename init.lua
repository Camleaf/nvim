--[[
-- Using Mason for LSPs / Linters and other

--]]

require("config.lazy")

---- Colourscheme tokyonight by folke
vim.cmd [[set autoindent]]
vim.cmd [[set noexpandtab]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[colorscheme tokyonight]]
vim.cmd [[set keymodel=startsel,stopsel]] -- For the default windows selection stuff

-- Enable line numbers  
vim.wo.number = true

---- General vim
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }


---- In-Editor shortcuts
-- General file shortcuts

vim.keymap.set('n','<C-s>', ':w<CR>',{noremap=true})
vim.keymap.set('i','<C-s>', '<ESC>:w<CR>i<right>',{remap=true})

---- Neotree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')

vim.keymap.set('n','<A-f>',':Neotree reveal<CR> :Neotree focus<CR>',{})

-- Load custom shortucts
require('custom.git').load() -- Neogit shortcuts
