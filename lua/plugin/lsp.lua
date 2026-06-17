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
            ensure_installed = require("configs."..CONFIG..".languages").getLspNames(),
            automatic_enable = require("configs."..CONFIG..".languages").getLspNames()

        },
    }, 
}
