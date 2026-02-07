local module = {}

function module.getParserNames()
    return {
        "bash",
        "lua",
        "java",
        "markdown",
        "yaml",
        "vim"

    }
end
function module.getLspNames()
    return {
     "lua_ls", "eclipse.jdt.ls",
     "bashls", "gradle_ls"
    }
end

return module
