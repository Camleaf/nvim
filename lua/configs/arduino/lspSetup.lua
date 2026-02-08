local module = {}

function module.load()
    vim.lsp.config("arduino_language_server",{
        filetypes = {"c","cpp","arduino"},
        cmd = {
            "arduino-language-server",
            "-cli-config", string.format("/home/%s/.arduino15/arduino-cli.yaml",Name),
            "-cli", vim.fn.exepath('arduino-cli'),
            '-clangd', "~/.config/nvim/lua/configs/arduino/clangd-esp.sh",
            '-fqbn', "esp32:esp32:esp32"
        }
    })
end


return module
