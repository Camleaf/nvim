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
     "lua_ls", "jtdls", "basedpyright","cpplint","ts_ls","html","tailwindcss"
    }
end

return module
