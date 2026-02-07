--[[
-- My file for neoGit-and-git-related shortcuts
--]]


local module = {}

function module.load()
	vim.api.nvim_create_user_command('Git', 
		function(opts) 
			-- add like commit and push and stuff to otherwise
			vim.cmd(':Neogit')
		end,
	{nargs="?"})
end
return module
