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
function module.getLspNames()
    return {
     "lua_ls", "basedpyright", 'arduino_language_server', "bashls",
    }
end

return module
