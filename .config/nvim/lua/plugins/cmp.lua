-- -- lua/plugins/cmp.lua
-- return {
--     -- Plugin principal do nvim-cmp
--     {
--       "hrsh7th/nvim-cmp",
--       -- Se quiser, defina o evento que carrega o cmp (por exemplo, no InsertEnter)
--       event = "InsertEnter",
--       dependencies = {
--         -- Adicione também as fontes básicas de cmp se precisar:
--         "hrsh7th/cmp-nvim-lsp",
--         "hrsh7th/cmp-buffer",
--         "hrsh7th/cmp-path",
--         "hrsh7th/cmp-cmdline",
--         -- Caso use snippets:
--         "saadparwaiz1/cmp_luasnip",
--         "L3MON4D3/LuaSnip",
  
--         -- Aqui você inclui o copilot-cmp COMO dependência, se quiser
--         -- que ele seja carregado junto
--         "zbirenbaum/copilot-cmp",
--       },
--       opts = function(_, opts)
--         -- nvim-cmp internals
--         local cmp = require("cmp")
  
--         -- Se já existir `opts.sources`, vamos injetar { name = "copilot" }
--         -- junto das outras fontes
--         opts.sources = cmp.config.sources(vim.list_extend(opts.sources or {}, {
--           { name = "copilot" },
--         }))
  
--         -- Caso queira ajustar os mappings, algo como:
--         opts.mapping = cmp.mapping.preset.insert({
--           -- Use <Tab> para aceitar sugestão, por exemplo
--           ["<Tab>"] = cmp.mapping.confirm({ select = true }),
--         })
  
--         -- Você também pode definir outras configurações, como snippet expand, etc.
--         -- Exemplo:
--         opts.snippet = {
--           expand = function(args)
--             require("luasnip").lsp_expand(args.body)
--           end,
--         }
  
--         return opts
--       end,
--       config = function(_, opts)
--         -- Carregamos a config final do cmp
--         local cmp = require("cmp")
--         cmp.setup(opts)
--       end,
--     },
--   }
return {}