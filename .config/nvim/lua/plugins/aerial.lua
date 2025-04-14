return {
    "stevearc/aerial.nvim",
    opts = {
      backends = { "lsp", "treesitter", "markdown", "man" },
      layout = {
        max_width = { 40, 0.2 },
        min_width = 20,
        default_direction = "prefer_right",
      },
      attach_mode = "global",
      show_guides = true,
      guides = {
        mid_item = "├─",
        last_item = "└─",
        nested_top = "│ ",
        whitespace = "  ",
      },
    },
    keys = {
      { "<leader>z", "<cmd>AerialToggle!<CR>", desc = "Toggle Outline (Aerial)" },
      { "]s", "<cmd>AerialNext<CR>", desc = "Next Symbol" },
      { "[s", "<cmd>AerialPrev<CR>", desc = "Previous Symbol" },
    },
    config = function(_, opts)
      require("aerial").setup(opts)
    end,
  }
  