return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha", -- mocha, macchiato, frappe, latte
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = false,
      show_end_of_buffer = false,
      term_colors = true,
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
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {
        mocha = {
          base = "#000000", -- Fondo negro puro
          mantle = "#0a0a0a",
          crust = "#111111",
        },
      },
      custom_highlights = function(colors)
        return {
          Normal = { bg = colors.base },
          NormalFloat = { bg = colors.base },
          SignColumn = { bg = colors.base },
          Folded = { bg = colors.mantle },
          FoldColumn = { bg = colors.base },
          CursorLine = { bg = colors.mantle },
          CursorColumn = { bg = colors.mantle },
          ColorColumn = { bg = colors.mantle },
          WinSeparator = { fg = colors.surface2 },
          Pmenu = { bg = colors.mantle },
          PmenuSel = { bg = colors.surface0 },
          PmenuSbar = { bg = colors.mantle },
          PmenuThumb = { bg = colors.surface0 },
          StatusLine = { bg = colors.mantle },
          TabLine = { bg = colors.mantle },
          TabLineSel = { bg = colors.base },
          TabLineFill = { bg = colors.mantle },
          -- Asegurar que todas las ventanas tengan fondo negro
          EndOfBuffer = { fg = colors.base, bg = colors.base },
          VertSplit = { fg = colors.surface2, bg = colors.base },
        }
      end,
      integrations = {
        alpha = true,
        cmp = true,
        gitsigns = true,
        illuminate = true,
        indent_blankline = {
          enabled = true,
          scope_color = "",
          colored_indent_levels = false,
        },
        lsp_trouble = true,
        mason = true,
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        navic = {
          enabled = false,
          custom_bg = "NONE",
        },
        neotest = true,
        noice = true,
        notify = true,
        nvimtree = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        which_key = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
