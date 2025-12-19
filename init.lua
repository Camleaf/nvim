require("config.lazy")

---- Colourscheme tokyonight by folke
vim.cmd [[set autoindent]]
vim.cmd [[set noexpandtab]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set shiftwidth=4]]
vim.cmd [[colorscheme tokyonight]]
-- Enable line numbers  
vim.wo.number = true


---- General vim
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' }


---- LanguageServers   https://github.com/neovim/nvim-lspconfig
vim.lsp.enable('pyright')
vim.lsp.enable('jdtls')


---- In-Editor shortcuts
-- General file shortcuts

vim.keymap.set('n','<C-s>', ':w<CR>',{noremap=true})
vim.keymap.set('i','<C-s>', '<ESC>:w<CR>i<right>',{remap=true})

-- Selection shortcuts    Todo: set conditionally sing the whole function notation
require('custom.arrows').load()
---- Neotree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')

vim.keymap.set('n','<A-f>',':Neotree reveal<CR> :Neotree focus<CR>',{})

