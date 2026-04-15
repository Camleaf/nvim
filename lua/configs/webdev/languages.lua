
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
        "markdown",
        "typescript",
        "yaml",
    }
end

function module.getFileTypes()
    return {
        "python",
        "typescriptreact",
        "bash",
        "css",
        "html",
        "javascript",
        "lua",
        "markdown",
        "typescript",
        "yaml",
    }
end

function module.getLspNames()
    return {
     "lua_ls", "cssls", "basedpyright", "ts_ls","html","tailwindcss",
     "bashls", "json"
    }
end

return module
