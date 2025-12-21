local module = {}


function module.getParserNames()
    return {
        "python",
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
        "vim",
    }
end

function module.getLspNames()
    return {
     "lua_ls", "jtdls", "basedpyright","cpplint","denols","html"
    }
end

return module
