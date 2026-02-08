
--[[
-- My file for config-related shortcuts
--]]
local module = {}



local configs = {"arduino", "esp32", "java", "py-c", "webdev"}

local lfuncs = require("user.luafuncs")

function module.load()
	vim.api.nvim_create_user_command('Config',
		function(opts)
			-- add like commit and push and stuff to otherwise
			if CONFIG == opts.args then
                print("Configuration \'"..CONFIG.."\' already enabled")
                return
            end

            if lfuncs.contains(configs,opts.args) == false then
                print("Argument \'"..opts.args.."\' not a configuration")
                return
            end

            CONFIG = opts.args
            
            vim.cmd(':cq')
        end,

	{nargs=1, desc="Changes loaded language config"})

end
return module
