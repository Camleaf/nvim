local module = {}


function module.getParserNames()
    return {
        "python",
        "tsx",
        "bash",
        "css",
        "html",
        "javascript",
        "lua",
        "java",
        "markdown",
        "typescript",
        "yaml",
        "c",
        "cpp",
        "vim"
    }
end

function module.getLspNames()
    return {
     "lua_ls", "cssls", "eclipse.jdt.ls", "basedpyright","ts_ls","html","tailwindcss", 'clangd', 'neocmake'
    }
end

return module
