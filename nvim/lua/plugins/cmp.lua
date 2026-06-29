return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", 
      "hrsh7th/cmp-buffer",   
      "hrsh7th/cmp-path",     
      "L3MON4D3/LuaSnip",     
    },
    config = function()
      local cmp = require("cmp")

      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(), 
          ["<C-e>"] = cmp.mapping.close(),        
          ["<CR>"] = cmp.mapping.confirm({ select = true }), 
          ["<Tab>"] = cmp.mapping.select_next_item(),        
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),      
        }),
        sources = cmp.config.sources({
          { name = "nvim-lsp" }, 
          { name = "buffer" },   
          { name = "path" },     
        }),
      })
    end,
  },
}
