local module = {}


function module.getParserNames()
    return {
        "bash",
        "lua",
        "markdown",
        "yaml",
        "qmljs"
    }
end

function module.getFileTypes()
    return {
        "bash",
        "lua",
        "markdown",
        "yaml",
        "qml"
    }
end

function module.getLspNames()
    return {
     "bashls", "jsonls", "qmlls", "lua_ls"
    }
end

return module
