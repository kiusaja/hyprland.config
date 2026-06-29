return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Gehe zu Definition", buffer = bufnr })
          vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Dokumentation (Hover)", buffer = bufnr })
          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action (Fixes)", buffer = bufnr })
          vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "Variable umbenennen", buffer = bufnr })
          vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Vorheriger Fehler", buffer = bufnr })
          vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Nächster Fehler", buffer = bufnr })
        end,
      })

      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
      })
      vim.lsp.enable("lua_ls")

      vim.lsp.config("omnisharp", {
        cmd = { "omnisharp" },
        capabilities = capabilities,
        settings = {
          enable_roslyn_analyzers = true,
          organize_imports_on_format = true,
          enable_import_completion = true,
        },
      })
      vim.lsp.enable("omnisharp")
    end,
  },
}
