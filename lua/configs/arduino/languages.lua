local module = {}

function module.getParserNames()
    return {
        "arduino",
        "python",
        "bash",
        "lua",
        "markdown",
        "yaml",
        "c",
        "cpp",
        "vim"
    }
end

function module.getFileTypes()
    return module.getParserNames()
end

function module.getLspNames()
    return {
     "lua_ls", "basedpyright", 'clangd', 'neocmake', "bashls", "jsonls"
    }
end

return module
