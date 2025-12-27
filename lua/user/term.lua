
--[[
-- My file for terminal-related shortcuts
--]]


local module = {}

function module.load()
    vim.api.nvim_create_user_command('Float',
		function(opts)
			-- add like commit and push and stuff to otherwise
			vim.cmd(':ToggleTerm')
		end,
	{nargs="?"})

    vim.cmd [[autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR> ]]

    vim.cmd [[nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>]]
    vim.cmd [[inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>]]
end
return module
