
--[[
-- My file for config-related shortcuts
--]]
local module = {}



local configs = {"arduino", "esp32", "java", "py-c", "webdev"}

local lfuncs = require("user.luafuncs")








function module.load()
	vim.api.nvim_create_user_command('Config',
		function(opts)

            -- edge cases
            if opts.args == "" then
                print("Current configuration is \'"..CONFIG.."\'")
                return
            end


            if opts.args == "all" then

                local outString = "All available configurations:"
                for _,val in ipairs(configs) do outString = outString .."\n".. val end
                print(outString)
                return
            end


            -- Main function stuff
			if CONFIG == opts.args then
                print("Configuration \'"..CONFIG.."\' already enabled")
                return
            end

            if lfuncs.contains(configs,opts.args) == false then
                print("Argument \'"..opts.args.."\' not a configuration")
                return
            end

            CONFIG = opts.args
            local file = io.open(vim.fn.expand("~").."/.config/nvim/activeconfig", "w")
            if file ~= nil then
                file:write(CONFIG)
                file:close()
            end

            vim.cmd(':cq')
        end,

	{nargs="?", desc="Changes loaded language config"})



end
return module
