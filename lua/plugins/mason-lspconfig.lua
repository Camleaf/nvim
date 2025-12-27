return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = require("user.languages").getLspNames()
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}
