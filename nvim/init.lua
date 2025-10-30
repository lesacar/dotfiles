vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.clipboard = "unnamedplus"
vim.o.winborder = "rounded"


vim.pack.add({
    { src = "https://github.com/vague2k/vague.nvim" },
    { src = "https://github.com/echasnovski/mini.pick" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    {
        src = "https://github.com/saghen/blink.cmp",
        version = "v1.7.0"
    },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
})

require("mini.pick").setup()
require("mason").setup()
require("mason-lspconfig").setup()
require("mason-tool-installer").setup({
    ensure_installed = {
        "lua_ls",
        "stylua",
        "ruff",
        "clangd",
        "ts_ls",
    },
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            runtime = { version = "LuaJIT" },
            diagnostics = { globals = { "vim", "require" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
        },
    },
})

require("blink.cmp").setup({
    keymap = {
        ['<Tab>'] = { 'select_next', 'fallback' },
        ['<S-Tab>'] = { 'select_prev', 'fallback' },
        ['<Esc>'] = { 'cancel', 'fallback' },
        ['<CR>'] = { 'select_and_accept', 'fallback' },
    },
    sources = {
        default = { "lsp", "path", "buffer", "snippets"},
    },
})

vim.keymap.set("n", "<leader>ff", ":Pick files<CR>")

vim.cmd("colorscheme vague")

--[[
vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method("textDocument/completion") then
            print("LSP SUPPORTS COMPLETION")
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
        end
    end,
})
--]]

vim.cmd("set completeopt+=noselect")
vim.diagnostic.config({ virtual_text = { current_line = true }})

-- LSP 
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>ll", vim.lsp.buf.hover)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "<leader>re", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>sh", vim.lsp.buf.signature_help)
-- needed if multiple keybinds start with the same letter to avoid neovim trying to guess which one you meant
vim.keymap.set("n", "<leader>l", "<Nop>")

-- file manipulation
vim.keymap.set("n", "<leader>o", function()
    vim.cmd("update")
    vim.cmd("so")
    print("SHOUTOUT: " .. vim.fn.expand("%:t"))
end)
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q!", ":q<CR>")
