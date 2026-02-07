
--[[
-- My file for config-related shortcuts
--]]


local module = {}

function module.load()
	vim.api.nvim_create_user_command('Config', 
		function(opts)
			-- add like commit and push and stuff to otherwise
			if CONFIG == opts.args then
                print("Configuration \'"..CONFIG.."\' already enabled")
                return
            end
            CONFIG = opts.args

            

            print("Configuration \'"..CONFIG.."\' enabled")
		end,

	{nargs=1, desc="Changes loaded language config"})

    
end
return module
