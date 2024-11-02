local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier.with({
            extra_filetypes = { "toml", "json", "yaml", "markdown" },
        }),
    },
})

-- Optional: Auto-format on save
vim.cmd([[
  augroup FormatOnSave
    autocmd!
    autocmd BufWritePre * lua vim.lsp.buf.format()
  augroup END
]])

