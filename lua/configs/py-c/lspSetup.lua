local module = {}

function module.load()
    vim.lsp.config("clangd",{
        root_dir=vim.fs.root(0,{".clangd","CMakeLists.txt",".git"})
    })
end


return module
