local null_ls = require("null-ls")
local autogroup = vim.api.nvim_create_augroup("LspFormatting",{})
local opts = {
  srouces = {
    null_ls.builtins.formatting.prettierd,
  },
  on_attach = function (client,bufnr)
    if client.supports_metho('textDocument/formatting') then
      vim.api.nvim_clear_autocmds({
        group = autogroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BuffWritePre",{
        group=autogroup,
          buffer=bufnr,
      })
    end
  end,
}
return opts
