local servers = { "clangd", "gopls", "pylsp", "jsonls", "sumneko_lua", "tsserver", "rust_analyzer", "tailwindcss",
    "texlab", "clojure_lsp", "solidity", "cssls"} -- "openscad_ls", "vscode-css-language-server"
--[[ require("ccls").setup({lsp = {use_defaults = true}}) ]]

require("mason").setup({
    PATH = "prepend",
})
require("mason-lspconfig").setup {
    ensure_installed = servers
}

local lspconfig = require("lspconfig")
for _, server in pairs(servers) do
    local opts = {
        on_attach = require("user.lsp.handlers").on_attach,
        capabilities = require("user.lsp.handlers").capabilities,
    }
    local has_custom_opts, server_custom_opts = pcall(require, "user.lsp.settings." .. server)
    if has_custom_opts then
        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
    end
    lspconfig[server].setup(opts)
end
