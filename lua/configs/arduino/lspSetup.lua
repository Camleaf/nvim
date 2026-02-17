local lfuncs = require("user.luafuncs")
local module = {}

local boardpkgs = {"esp32","arduino"}

function module.load()

    local boardConf = "esp32" -- esp32 by default
    local file = io.open(vim.fn.expand("~").."/.config/nvim/lua/configs/arduino/activeboard", "r")
    if file ~= nil then
        boardConf = file:read("*a")
        file:close()
    end


    vim.lsp.config("clangd", {
        cmd = {
            "clangd",
            "--background-index",
            "--query-driver="..vim.fn.expand("~").."/.arduino15/packages/"..boardConf.."/tools/**/bin/*"
        },
        filetypes = { "c", "cpp", "objc", "objcpp", "arduino" },

        root_dir = vim.fs.root(0,{".clangd", "compile_commands.json", ".git"})
    })



    vim.api.nvim_create_user_command('Board',
		function(opts)

            -- edge cases
            if opts.args == "" then
                print("Current board is \'"..boardConf.."\'")
                return
            end


            if opts.args == "all" then

                local outString = "All available configurations:"
                for _,val in ipairs(boardpkgs) do outString = outString .."\n".. val end
                print(outString)
                return
            end


            -- Main function stuff
			if boardConf == opts.args then
                print("Board config \'"..boardConf.."\' already enabled")
                return
            end

            if lfuncs.contains(boardpkgs,opts.args) == false then
                print("Argument \'"..opts.args.."\' not an installed board")
                return
            end

            boardConf = opts.args
            local f = io.open(vim.fn.expand("~").."/.config/nvim/lua/configs/arduino/activeboard", "w")
            if f ~= nil then
                f:write(boardConf)
                f:close()
            end

            vim.cmd(':cq')
        end,

	{nargs="?", desc="Changes loaded board config"})

    print("Board \'"..boardConf.."\' loaded")
end


return module
