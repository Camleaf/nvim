local module = {}


function module.getParserNames()
    return {
        "bash",
        "lua",
        "markdown",
        "yaml",
    }
end

function module.getFileTypes()
    return {
        "bash",
        "lua",
        "markdown",
        "yaml",
        "quickshell"
    }
end

function module.getLspNames()
    return {
     "bashls", "jsonls", "qmlls", "lua_ls"
    }
end

return module
