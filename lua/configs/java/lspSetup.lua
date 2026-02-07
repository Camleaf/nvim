local module = {}

function module.load()
    -- Fix java root dir
    vim.lsp.config('jdtls', {
        root_dir = vim.fs.root(0, {'gradlew', '.git','.project','mvnw'}),
    })
end


return module
