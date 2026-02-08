local module = {}

function module.load()
    
    local clangd_path = "~/.espressif/tools/esp-clang/esp-19.1.2_20250312/esp-clang/bin/clangd"
    if clangd_path then
        vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
            pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
            callback = function()
                if vim.fs.root(0,{"sdkconfig"}) ~= nil then
                    vim.lsp.start({
                        cmd = {vim.fn.expand(clangd_path), '--query-driver=' .. vim.fn.expand("~") .. "/.espressif/tools/**/bin/*"},
                        filetypes = { "c", "cpp", "objc", "objcpp" },
                        root_dir = vim.fs.root(0,{"sdkconfig"}),
                        on_attach = function()
                            vim.notify("ESP Clang LSP attached!", vim.log.levels.INFO)
                        end,
                    })
                end
            end,
        })
    else
        vim.notify("ESP Clang LSP not configured: missing clangd executable", vim.log.levels.WARN)
    end


end


return module
