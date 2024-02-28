return {
  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim', opts = {} },

  -- colorschemes
  {
    "catppuccin/nvim",
    name = "catppuccin",
    -- priority = 1000,
    -- config = function ()
    --   vim.cmd.colorscheme "catppuccin"
    -- end
  },
  {
    -- Theme inspired by Atom
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      require('onedark').setup({style = 'darker'})
      vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    name = "kanagawa",
    -- priority = 1000,
    -- config = function ()
    --   vim.cmd.colorscheme "kanagawa"
    -- end
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = '|',
        section_separators = '',
      },
    },
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim', opts = {} },

  -- a line on top to display buffers
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},

  -- symbold outline overview tree
  'simrat39/symbols-outline.nvim',
}
