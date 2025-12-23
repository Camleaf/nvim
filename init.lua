--[[
-- Using Mason for LSPs / Linters and other
--]]

require("config.lazy")

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



vim.cmd [[set keymodel=startsel,stopsel]]
---- In-Editor shortcuts
-- General file shortcuts

vim.keymap.set('n','<C-s>', ':w<CR>',{noremap=true})
vim.keymap.set('i','<C-s>', '<ESC>:w<CR>i<right>',{remap=true})

---- Neotree shortcuts
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')
vim.keymap.set('n','<A-f>',':Neotree reveal<CR> :Neotree focus<CR>',{})

-- Load custom shortucts
require('custom.git').load()-- Neogit shortcuts

-- Show full diagnostics

vim.diagnostic.config({
    virtual_text = {
        prefix = '●',
        source = 'always',
    },
    severity_sort = true,
})

-- Add vim context to lua
vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" }}}}})


require('nvim-treesitter').setup({
  -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
  ensure_installed = require("custom.languages").getParserNames(),
 auto_install = true,

})
-- treesitter install. Enable only on first run or when adding a new parser, or updating parsers

--require('nvim-treesitter').install(require("custom.languages").getParserNames()):wait(30000) -- wait max 5min

-- treesitter activation for each file
vim.api.nvim_create_autocmd('FileType', {
  pattern = require("custom.languages").getParserNames(),
  callback = function() vim.treesitter.start() end,
})



-- Load WSL-specific options
if vim.fn.has('wsl') == 1 then
    require('custom.wslSetup').load()
end

