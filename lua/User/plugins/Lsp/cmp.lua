return {
   {
      'hrsh7th/nvim-cmp',
      dependencies = {
         'onsails/lspkind.nvim', -- vs-code like pictograms
      },
      event = { 'CmdLineEnter', 'InsertEnter' },
      config = function()
         -- nvim-cmp setup
         local cmp = require 'cmp'
         local lspkind = require 'lspkind'
         lspkind.init {
            -- DEPRECATED (use mode instead): enables text annotations
            --
            -- default: true
            -- with_text = true,

            -- defines how annotations are shown
            -- default: symbol
            -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
            mode = 'symbol_text',

            -- default symbol map
            -- can be either 'default' (requires nerd-fonts font) or
            -- 'codicons' for codicon preset (requires vscode-codicons font)
            --
            -- default: 'default'
            preset = 'codicons',
            -- override preset symbols
            --
            -- default: {}
            symbol_map = {
               Text = '󰉿',
               Method = '󰆧',
               Function = '󰊕',
               Constructor = '',
               Field = '󰜢',
               Variable = '󰀫',
               Class = '󰠱',
               Interface = '',
               Module = '',
               Property = '󰜢',
               Unit = '󰑭',
               Value = '󰎠',
               Enum = '',
               Keyword = '󰌋',
               Snippet = '󰅱',
               Color = '󰏘',
               File = '',
               Reference = '󰈇',
               Folder = '󰉋',
               EnumMember = '',
               Constant = '󰏿',
               Struct = '󰙅',
               Event = '',
               Operator = '󰆕',
               TypeParameter = '',
            },
         }
         require('luasnip.loaders.from_vscode').lazy_load()
         local luasnip = require 'luasnip'
         cmp.setup {

            snippet = {
               expand = function(args)
                  luasnip.lsp_expand(args.body)
               end,
            },
            window = {
               completion = cmp.config.window.bordered {
                  winhighlight = 'Normal:Normal,FloatBorder:BorderBG,CursorLine:PmenuSel,Search:None',
               },
            },
            formatting = {
               format = lspkind.cmp_format {
                  maxwidth = 50,
                  ellipsis_char = '...',
               },
            },

            mapping = cmp.mapping.preset.insert {
               ['<C-d>'] = cmp.mapping.scroll_docs(-4),
               ['<C-f>'] = cmp.mapping.scroll_docs(4),
               ['<C-Space>'] = cmp.mapping.complete(),
               ['<CR>'] = cmp.mapping.confirm {
                  behavior = cmp.ConfirmBehavior.Replace,
                  select = true,
               },
               ['<Tab>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                     cmp.select_next_item()
                  elseif luasnip.expand_or_jumpable() then
                     luasnip.expand_or_jump()
                  else
                     fallback()
                  end
               end, { 'i', 's' }),
               ['<S-Tab>'] = cmp.mapping(function(fallback)
                  if cmp.visible() then
                     cmp.select_prev_item()
                  elseif luasnip.jumpable(-1) then
                     luasnip.jump(-1)
                  else
                     fallback()
                  end
               end, { 'i', 's' }),
            },
            sources = {
               { name = 'nvim_lsp' },
               { name = 'luasnip' }, -- For luasnip users.
            },
            {
               { name = 'buffer' },
            },
         }
         -- vim.cmd 'highlight! BorderBG guibg=NONE guifg=#00ff00'
      end,
   },
   {
      'hrsh7th/cmp-nvim-lsp', -- Autocompletion with LSPs
      event = { 'CmdLineEnter', 'InsertEnter' },
   },
   {
      'L3MON4D3/LuaSnip',
      dependencies = {
         'saadparwaiz1/cmp_luasnip',
         'rafamadriz/friendly-snippets',
      },
   },
} -- Autocompletion plugin
