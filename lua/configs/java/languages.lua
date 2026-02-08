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
     "lua_ls", "jdtls",
     "bashls", "gradle_ls"
    }
end

return module
