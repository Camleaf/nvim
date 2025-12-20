--[[
-- My file for neoGit-and-git-related shortcuts
--]]


local module = {}

function module.load()
	--This works kind not very good at all though
	vim.keymap.set("c","Git<CR>",":Neogit<CR>",{remap=true})	
end
return module
