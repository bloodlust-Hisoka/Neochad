return {
   -- colorschemes
   {
      'rose-pine/neovim',
      name = 'rose-pine',
      config = function()
         require('rose-pine').setup {
            --- @usage 'auto'|'main'|'moon'|'dawn'
            variant = 'moon',
            --- @usage 'main'|'moon'|'dawn'
            dark_variant = 'main',
            bold_vert_split = false,
            dim_nc_background = false,
            disable_background = false,
            disable_float_background = false,
            disable_italics = true,
            --- @usage string hex value or named color from rosepinetheme.com/palette
            groups = {
               background = 'base',
               background_nc = '_experimental_nc',
               panel = 'surface',
               panel_nc = 'base',
               border = 'highlight_med',
               comment = 'muted',
               link = 'iris',
               punctuation = 'subtle',

               error = 'love',
               hint = 'iris',
               info = 'foam',
               warn = 'gold',

               headings = {
                  h1 = 'iris',
                  h2 = 'foam',
                  h3 = 'rose',
                  h4 = 'gold',
                  h5 = 'pine',
                  h6 = 'foam',
               },
               -- or set all headings at once
               -- headings = 'subtle'
            },

            -- Change specific vim highlight groups
            -- https://github.com/rose-pine/neovim/wiki/Recipes
            highlight_groups = {
               ColorColumn = { bg = 'rose' },

               -- Blend colours against the "base" background
               CursorLine = { bg = 'foam', blend = 10 },
               StatusLine = { fg = 'love', bg = 'love', blend = 10 },

               -- By default each group adds to the existing config.
               -- If you only want to set what is written in this config exactly,
               -- you can set the inherit option:
               Search = { bg = 'gold', inherit = false },
            },
         }

         -- Set colorscheme after options
      end,
   },
   {
      'rebelot/kanagawa.nvim',
      name = 'kanagawa',
      config = function()
         require('kanagawa').setup {
            compile = false, -- enable compiling the colorscheme
            undercurl = true, -- enable undercurls
            commentStyle = { italic = true },
            functionStyle = {},
            keywordStyle = { italic = true },
            statementStyle = { bold = true },
            typeStyle = {},
            transparent = false, -- do not set background color
            dimInactive = false, -- dim inactive window `:h hl-NormalNC`
            terminalColors = true, -- define vim.g.terminal_color_{0,17}
            colors = { -- add/modify theme and palette colors
               palette = {},
               theme = {
                  wave = {},
                  lotus = {},
                  dragon = {},
                  all = {
                     ui = {
                        bg_gutter = 'none',
                     },
                  },
               },
            },
            overrides = function(colors) -- add/modify highlights
               return {}
            end,
            theme = 'lotus', -- Load "wave" theme when 'background' option is not set
            background = { -- map the value of 'background' option to a theme
               dark = 'wave', -- try "dragon" !
               light = 'lotus',
            },
         }
      end,
   },
   {
      'Tsuzat/NeoSolarized.nvim',
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
      config = function() end,
   },
   {
      'craftzdog/solarized-osaka.nvim',
      lazy = false,
      priority = 1000,
      config = function()
         require('solarized-osaka').setup {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            transparent = true, -- Enable this to disable setting the background color
            terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
            styles = {
               -- Style to be applied to different syntax groups
               -- Value is any valid attr-list value for `:help nvim_set_hl`
               comments = { italic = true },
               keywords = { italic = true },
               functions = {},
               variables = {},
               -- Background styles. Can be "dark", "transparent" or "normal"
               sidebars = 'transparent', -- style for sidebars, see below
               floats = 'transparent', -- style for floating windows
            },
            sidebars = { 'qf', 'help' }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
            day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
            hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
            dim_inactive = false, -- dims inactive windows
            lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

            --- You can override specific color groups to use other groups or a hex color
            --- function will be called with a ColorScheme table
            ---@param colors ColorScheme
            on_colors = function(colors) end,

            --- You can override specific highlights to use other groups or a hex color
            --- function will be called with a Highlights and ColorScheme table
            ---@param highlights Highlights
            ---@param colors ColorScheme
            on_highlights = function(highlights, colors) end,
         }
      end,
   },
   { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
   {
      'ellisonleao/gruvbox.nvim',
      priority = 1000,
      config = function()
         -- Default options:
         require('gruvbox').setup {
            terminal_colors = true, -- add neovim terminal colors
            undercurl = true,
            underline = true,
            bold = false,
            italic = {
               strings = false,
               emphasis = false,
               comments = false,
               operators = false,
               folds = false,
            },
            strikethrough = true,
            invert_selection = false,
            invert_signs = false,
            invert_tabline = false,
            invert_intend_guides = false,
            inverse = true, -- invert background for search, diffs, statuslines and errors
            contrast = 'hard', -- can be "hard", "soft" or empty string
            palette_overrides = {},
            overrides = {},
            dim_inactive = false,
            transparent_mode = false,
         }
      end,
   },
   {
      'sainnhe/sonokai',
      config = function()
         vim.g.sonokai_style = 'andromeda'
      end,
   },
   {
      'navarasu/onedark.nvim',
      config = function()
         require('onedark').setup {
            style = 'darker',
            term_colors = true,
         }
      end,
   },
   { 'bluz71/vim-nightfly-colors' },
   { 'bluz71/vim-moonfly-colors' },
   { 'folke/tokyonight.nvim' },
   { 'rmehri01/onenord.nvim' },
   { 'sainnhe/edge' },
   { 'shaunsingh/nord.nvim' },
   { 'EdenEast/nightfox.nvim' }, -- lazy
   { 'Everblush/nvim', name = 'everblush' },
   { 'Mofiqul/dracula.nvim' },
   { 'embark-theme/vim', name = 'embark' },
   { 'marko-cerovac/material.nvim' },

   {
      'mcchrish/zenbones.nvim',
      -- Optionally install Lush. Allows for more configuration or extending the colorscheme
      -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
      -- In Vim, compat mode is turned on as Lush only works in Neovim.
      dependencies = 'rktjmp/lush.nvim',
   },
   {
      'raddari/last-color.nvim',
   },
}
