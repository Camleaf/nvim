
--[[
-- My file for terminal-related shortcuts
--]]


local module = {}

function module.load()

    vim.cmd [[autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR> ]]

    vim.cmd [[nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>]]
    vim.cmd [[inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>]]
end
return module
