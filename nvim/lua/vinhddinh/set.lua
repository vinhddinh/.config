vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.g.python3_host_prog = os.getenv("HOME") .. "/.local/bin/venv/bin/python"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

vim.cmd([[ autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.css,*.html,*.json,*.yaml,*.md,*.vue,*.svelte lua vim.lsp.buf.format({ async = false }) ]])

