return {
    {
      'neovim/nvim-lspconfig',
      dependencies = { 'saghen/blink.cmp' },
    },
    {
        "mason-org/mason.nvim",
        opts = {}
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {
            ensure_installed = require("configs."..CONFIG..".languages").getLspNames(),
        },
    },
    {'mfussenegger/nvim-jdtls'}

}
