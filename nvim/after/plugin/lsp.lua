local lsp = require('lsp-zero')

lsp.preset({
    name = 'recommended',
    set_lsap_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true
})

-- Use Mason to manage LSP installations
local mason = require('mason')
mason.setup()

local mason_lspconfig = require('mason-lspconfig')
mason_lspconfig.setup({
  ensure_installed = { "pyright", "tsserver" },
  -- Add language servers you want to ensure are installed
  automatic_installation = true,
  handlers = {
	  function(server_name)
		  require('lspconfig')[server_name].setup({})
	  end,
      ["lua_ls"] = function ()
          local lspconfig = require("lspconfig")
          lspconfig.lua_ls.setup {
              settings = {
                  Lua = {
                      diagnostics = {
                          globals = { "vim" }
                      }
                  }
              }
          }
      end,
  }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.setup()

