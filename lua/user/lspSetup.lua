local module = {}

function module.load()
    
    -- Add vim context to lua
    vim.lsp.config("lua_ls", {
        settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" }}}}})

    vim.lsp.config("arduino_language_server",{
        cmd = {
            "arduino-language-server",
            "-cli-config", string.format("/home/%s/.arduino15/arduino-cli.yaml",Name),
            "-cli", vim.fn.exepath('arduino-cli'),
            '-clangd', vim.fn.exepath("clangd"),
            '-fqbn', "esp32:esp32:esp32"
        }
    })

    -- Fix java root dir
    vim.lsp.config('jdtls', {
        root_dir = vim.fs.root(0, {'gradlew', '.git','.project','mvnw'}),
    })

    --setup treesitter
    require('nvim-treesitter').setup({
      -- Directory to install parsers and queries to (prepended to `runtimepath` to have priority)
      ensure_installed = require("user.languages").getParserNames(),
     auto_install = true,

    })
    -- treesitter parsers install.

    require('nvim-treesitter').install(require("user.languages").getParserNames()):wait(30000) -- wait max 5min

    -- treesitter activation for each file
    vim.api.nvim_create_autocmd('FileType', {
      pattern = require("user.languages").getParserNames(),
      callback = function() vim.treesitter.start() end,
    })

    vim.lsp.config("clangd",{
        root_dir=function()
            if vim.fs.root(0,{"sdkconfig"}) ~= nil then return nil end
            return vim.fs.root(0,{".clangd","CMakeLists.txt",".git"})
        end
    })

    
    require('user.esp-clangd').load()

end


return module
