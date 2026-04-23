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
end


return module
