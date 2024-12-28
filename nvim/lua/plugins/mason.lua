return {
  -- Mason plugin
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        -- Add any custom Mason settings here
        ui = {
          border = "rounded",
        },
      })
    end,
  },

  -- Mason LSP Config integration
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        -- Ensure these servers are installed
        ensure_installed = { "lua_ls" },
        automatic_installation = true,
      })
    end,
  },
}
