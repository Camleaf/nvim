local m = {}
-- Find the latest ESP Clang installation
local function find_esp_clang()
    local glob = vim.fn.glob("~/.espressif/tools/esp-clang/esp-20.1.1_20250829/esp-clang/bin/clangd", 1, 1)
    if #glob == 0 then
        vim.notify("ESP Clang not found", vim.log.levels.ERROR)
        return nil
    end
    table.sort(glob)
    return glob[#glob] .. "/clangd"  -- the clangd executable
end

function m.load()
    -- Setup the ESP Clang LSP as its own server
    local clangd_path = "~/.espressif/tools/esp-clang/esp-19.1.2_20250312/esp-clang/bin/clangd"
    if clangd_path then
        vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
            pattern = { "*.c", "*.cpp", "*.h", "*.hpp" },
            callback = function()
                vim.lsp.start({
                    cmd = {vim.fn.expand(clangd_path), '--query-driver=' .. vim.fn.expand("~") .. "/.espressif/tools/**/bin/*"},
                    filetypes = { "c", "cpp", "objc", "objcpp" },
                    root_dir = vim.fs.root(0,{"sdkconfig"}),
                    on_attach = function()
                        vim.notify("ESP Clang LSP attached!", vim.log.levels.INFO)
                    end,
                })
            end,
        })
    else
        vim.notify("ESP Clang LSP not configured: missing clangd executable", vim.log.levels.WARN)
    end
end
return m
