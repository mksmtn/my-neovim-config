return {
  "saghen/blink.cmp",
  opts = {
    keymap = { preset = "default" },
  },
  opts_extends = { "sources.default" },
}
--
--return {
--  {
--    "hrsh7th/nvim-cmp",
--    dependencies = {
--      -- install different completion source
--      "hrsh7th/cmp-nvim-lsp",
--      "hrsh7th/cmp-buffer",
--      "hrsh7th/cmp-path",
--    },
--    config = function()
--      local cmp = require("cmp")
--      cmp.setup({
--        -- add different completion source
--        sources = cmp.config.sources({
--          { name = "nvim_lsp" },
--          { name = "buffer" },
--          { name = "path" },
--        }),
--        snippet = {
--          expand = function(args)
--            vim.snippet.expand(args.body)
--          end,
--        },
--        -- Select with <enter> if an item is focused,
--        -- insert carriage return otherwise
--        mapping = cmp.mapping.preset.insert({
--          ["<CR>"] = cmp.mapping({
--            i = function(fallback)
--              if cmp.visible() and cmp.get_active_entry() then
--                cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
--              else
--                fallback()
--              end
--            end,
--            s = cmp.mapping.confirm({ select = true }),
--            c = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
--          }),
--        }),
--      })
--    end,
--  },
--}
