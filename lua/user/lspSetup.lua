local module = {}

local lfuncs = require("user.luafuncs")
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
        ensure_installed = lfuncs.merge(require("configs."..CONFIG..".languages").getParserNames(),require("configs.global-langs").getParserNames()),
        auto_install = true,
        highlight = {
            enable = true,
            additional_vim_regex_highlighting = false
        },
        install_dir = vim.fn.expand("~")..'/.config/nvim/installed/parsers'

    })
    -- treesitter parsers install.

    require('nvim-treesitter').install(
        lfuncs.merge(
            require("configs."..CONFIG..".languages").getParserNames(),
            require("configs.global-langs").getParserNames()
        )
    ):wait(30000) -- wait max 5min

    -- treesitter activation for each file
    vim.api.nvim_create_autocmd('FileType', {
      pattern = lfuncs.merge(require("configs."..CONFIG..".languages").getFileTypes(),require("configs.global-langs").getFileTypes()),
      callback = function()
          vim.treesitter.start() 
      end,
    })
    
    vim.lsp.config("qmlls", {
        cmd = {"qmlls6"},
        root_dir=vim.fs.root(0,{"shell.qml",".qmlls.ini",".git"})
    })


    require("configs."..CONFIG..".lspSetup").load()
end


return module
