require("nvchad.configs.lspconfig").defaults()

local servers = { "clangd", "lua_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--header_insertion=nerver",
  }
}
