return {

    -- 1) Declara o plugin catppuccin e sua config
    {
      "catppuccin/nvim",
      name = "catppuccin",
      config = function()
        require("catppuccin").setup({
          flavour = "mocha",
          background = {
            light = "latte",
            dark = "mocha",
          },
          transparent_background = true,
          show_end_of_buffer = false,
          term_colors = false,
          dim_inactive = {
            enabled = false,
            shade = "dark",
            percentage = 0.15,
          },
          no_italic = false,
          no_bold = false,
          no_underline = false,
          styles = {
            comments = { "italic" },
            conditionals = { "italic" },
            loops = {"bold"},
            functions = {"bold"},
            keywords = {},
            strings = {},
            variables = {"bold"},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
          },
          color_overrides = {},
          custom_highlights = {},
          default_integrations = true,
          integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = false,
            mini = {
              enabled = true,
              indentscope_color = "",
            },
          },
        })
  
        -- Chamamos o colorscheme
        vim.cmd.colorscheme("catppuccin")
      end,
    },
  
    -- 2) Sobrescreve a opção de tema do próprio LazyVim
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "catppuccin",
      },
    },
  }
  