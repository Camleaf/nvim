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

function module.getFileTypes()
    return module.getParserNames()
end


function module.getLspNames()
    return {
     "lua_ls", "jdtls", "jsonls",
     "bashls", "gradle_ls"
    }
end

return module
