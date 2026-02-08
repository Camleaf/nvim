local module = {}

function module.load()


    -- Add vim context to lua
    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" }}}}})




    --setup treesitter
    require('nvim-treesitter').setup({
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      ensure_installed = require("configs."..CONFIG..".languages").getParserNames(),
     auto_install = true,

    })
    -- treesitter parsers install.

    require('nvim-treesitter').install(require("configs."..CONFIG..".languages").getParserNames()):wait(30000) -- wait max 5min

    -- treesitter activation for each file
    vim.api.nvim_create_autocmd('FileType', {
      pattern = require("configs."..CONFIG..".languages").getParserNames(),
      callback = function() vim.treesitter.start() end,
    })
    

    require("configs."..CONFIG..".lspSetup").load()
end


return module
