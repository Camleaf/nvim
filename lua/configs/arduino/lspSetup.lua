local module = {}

function module.load()
    vim.lsp.config("clangd", {
        cmd = {
            "clangd",
            "--background-index",
            "--query-driver="..vim.fn.expand("~").."/.arduino15/packages/esp32/tools/**/bin/*"
        },
        filetypes = { "c", "cpp", "objc", "objcpp", "arduino" },

        root_dir = vim.fs.root(0,{".clangd", "compile_commands.json", ".git"})
    })
end


return module
