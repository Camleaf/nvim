
local lfuncs = require("user.luafuncs")

return {
    {
      'neovim/nvim-lspconfig',
      dependencies = { 'saghen/blink.cmp' },
      version = "2.10",
    },
    {
        "mason-org/mason.nvim",
        opts = {},
        version = "2.*.*"
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = lfuncs.merge(require("configs."..CONFIG..".languages").getLspNames(),require("configs.global-langs").getLspNames()),
            automatic_enable = lfuncs.merge(require("configs."..CONFIG..".languages").getLspNames(),require("configs.global-langs").getLspNames())

        },
    }, 
}
