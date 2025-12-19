local module = {}


function module.load() 

	-- Shift-<arrowkey> selects text

	vim.keymap.set({'i','n','v'},'<S-left>',function()
		if vim.api.nvim_get_mode().mode == "v" then 
			return "<left>"
		else
			return "<ESC>v<left>"
		end
	end, {expr= true, remap=true})

	vim.keymap.set({'i','n','v'},'<S-up>',function()
		if vim.api.nvim_get_mode().mode == "v" then 
			return "<up>"
		else
			return "<ESC>v<up>"
		end
	end, {expr= true, remap=true})

	vim.keymap.set({'i','n','v'},'<S-down>',function()
		if vim.api.nvim_get_mode().mode == "v" then 
			return "<down>"
		else
			return "<ESC>v<down>"
		end
	end, {expr= true, remap=true})

	vim.keymap.set({'i','n','v'},'<S-right>',function()
		if vim.api.nvim_get_mode().mode == "v" then 
			return "<right>"
		else
			return "<ESC>v<right>"
		end
	end, {expr= true, remap=true})




end

return module
