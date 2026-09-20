local module = {}

function module.load()
    -- Needed for compilation but nothing special here for moment
   vim.filetype.add({
      extension = {
        mdx = "markdown.mdx",
      },
      filename = {},
      pattern = {},
    })

    vim.lsp.config('vtsls', {
      on_attach = function(client, buf)
        client.server_capabilities.semanticTokensProvider = nil
      end,
    })

    vim.lsp.config('tailwindcss', {
      settings = {
        tailwindCSS = {
          colorDecorators = false,
        },
      },
    })
end


return module
