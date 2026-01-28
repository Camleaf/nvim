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
            ensure_installed = require("user.languages").getLspNames(),
        },
    },
    {'mfussenegger/nvim-jdtls'}

}
