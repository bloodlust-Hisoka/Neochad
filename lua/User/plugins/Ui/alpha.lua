return {
   'goolord/alpha-nvim',
   config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡴⡢⡶⠶⢢⢄⠀⠀⠀⠀    ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⢏⣺⢿⣿⣾⣹⣷⢡⠀⠀⠀⠀   ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢾⣾⣟⠝⠀⠨⠉⢹⡏⠀⠀⠀    ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣻⡇⠘⠿⢾⢐⣶⠃⠀⠀⠀    ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣱⣾⣷⣦⣠⡾⣃⡐⠀⠀⠀⠀    ',
         -- '⠀⠀⠀⠀⠀⣀⡀⣀⣀⣤⣤⣠⡟⢻⣿⣿⣏⠻⡿⠀⠀⠀⠀⠀    ',
         -- '⠀⣠⡾⢿⡿⠿⠿⢿⣻⣿⡋⠉⡇⠀⣿⠛⠻⠿⢇⠀⠀⠀⠀⠀    ',
         -- '⣸⠋⠀⣿⠀⠀⠀⠀⠈⠙⢷⠀⢰⣰⠃⡠⢔⠄⠀⠀⢄⠀⠀⠀    ',
         -- '⢻⡄⠀⠛⢆⠀⠀⠀⠀⠀⠈⢿⣿⣿⠞⠛⠉⠁⠉⠢⡀⠑⢀⠀    ',
         -- '⠀⣷⢀⣶⢿⣷⠀⠀⠀⠀⠀⢸⡟⠀⠀⠀⠀⠀⠀⠀⠈⠆⠀⠡    ',
         -- '⠞⢁⡼⢯⣠⣿⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⡂⠀   ',
         -- '⠖⠋⠀⠀⢻⣿⣄⡀⠀⢀⣾⡏⠀⠀⠀⠀⠀⢀⢰⡴⠀⠧⠀⠘    ',
         -- '⠀⠀⠀⠀⠀⣿⡝⣻⣿⣿⣿⣿⣦⣄⡀⠀⢔⡵⡟⡇⠀⠀⠱⠈    ',
         -- '⠀⠀⠀⠀⠀⣾⣹⡯⠤⢄⣏⣀⡈⣹⡟⡩⢋⢼⡄⢹⠀⠀⠌⠀    ',

         -- '⠈⠉⠒⠒⡲⠂⠀⠀⣠⠶⢲⡶⢋⠀⡠⠀⢫⢂⠲⡄⠠⡀⠐⡄⢀⠀⠠⡄⠀⡐⣄⢀⠤⣀⠈⠳⠦⣄⣀⡀⠀⠀ ',
         -- '⠀⠀⢀⡜⣡⣴⣶⠎⠀⣴⠋⡠⢃⡔⠁⠀⠀⢻⠄⠹⣤⡈⢢⡈⠂⠳⡄⠈⢢⡀⠈⠺⡦⡈⠑⠢⣀⡈⠐⠀⠠⠄ ',
         -- '⠀⠐⠉⠁⣰⠟⠁⣠⡞⢁⡼⢡⡟⣰⢠⠀⡤⠀⠀⠀⠈⠙⡄⠑⢄⠀⠈⠢⠀⠈⢢⠀⠸⡮⢲⣄⠒⣤⡤⠤⠖⠁ ',
         -- '⠀⠀⠀⠞⢋⠴⢿⡿⢣⠃⢃⡎⣵⣿⢸⣰⡇⢠⡀⢷⣲⣄⢹⡄⠣⡈⣦⠀⢧⡀⠀⡳⣄⠱⣄⢹⣇⠘⡝⠂⠀⠀ ',
         -- '⠀⠀⢀⠞⠁⠀⣾⠕⢩⢃⣾⢠⣿⣿⣜⣿⣿⡀⣷⠸⣿⣿⣧⣹⣄⢻⣮⢧⠈⢷⢄⠽⣾⣷⢿⣦⣻⡷⣜⣆⠀⠀ ',
         -- '⠀⠀⠈⠀⠀⣸⠋⣠⢏⣾⡇⢸⡏⢹⣿⣶⡿⣷⢸⣧⣿⣽⣿⣿⣿⡶⣿⣿⣷⡈⢺⣾⣻⣮⢻⠈⣿⡓⠄⠈⠂⠀ ',
         -- '⠀⠀⠀⠀⠀⠃⠀⡏⢸⢸⢹⣗⠹⣄⠻⠿⠇⠹⠻⡇⠛⠉⢿⣿⠿⠁⣠⠋⢸⣿⣶⢙⣟⡳⡸⢀⡿⢷⡀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠁⠘⢸⢸⢻⡄⠈⡓⠒⢀⠄⠀⠁⠀⢘⣶⣤⡔⠚⠁⢀⠠⣷⣿⣶⢤⣾⡶⣏⠀⠀⠉⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠘⢷⡴⠀⠀⢯⠀⠀⠀⠀⠐⢿⠋⠁⠀⠀⠀⣥⢾⣀⣠⣾⠋⠁⠙⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠣⣄⠀⠀⢤⣄⡀⠀⠀⠈⡇⠰⣠⠔⣹⣿⣿⣿⡸⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢄⡀⠈⠀⠀⢀⣼⡷⣋⣤⣾⣿⣿⡏⠁⠧⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣦⣶⣾⣿⣷⣾⣿⣿⣿⣿⣿⣉⠲⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡽⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠋⠁⠀⠈⢓⢄⡀⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡮⢰⣾⣿⣿⣿⣿⣿⣿⡿⠛⠁⠀⠀⠀⠀⢀⠔⠁⠀⢸⠀⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣼⡿⢠⣿⣿⣿⣿⣿⣿⠟⠋⠀⣠⣤⠔⢀⡔⠀⠀⠀⠀⠀⠀⢣⡀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠟⡝⠁⣾⣿⣿⣿⡿⠋⠁⠀⠀⠛⠋⠀⡀⣩⠤⠀⠀⠀⢀⠠⠐⠒⠻⢦⡀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⡜⢀⡄⣿⣿⡟⠉⠀⢠⣤⠄⠀⠀⠀⠛⠉⠁⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⢣⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣜⡝⠀⢸⡇⠙⠋⠀⠀⠀⠀⠁⠀⠈⠀⠀⢀⠖⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀ ',
         --
         -- '⠀⠀⠀⠀⠀⠀⠀⢀⠂⡡⠂⠀⡂⡁⣤⢖⠶⠻⠢⡀⠀⠀⠀⠀⠀⠀⠀',
         -- '⠀⠀⠀⠀⠀⠀⡐⡁⢀⠔⠕⡡⢊⣠⠚⠁⠡⠀⠈⠺⣄⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⡐⡐⢠⠂⢊⠊⠠⠱⡹⠀⠀⠎⣡⠐⠰⢡⠆⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠇⠁⠓⣄⠂⣐⢃⢃⠇⠀⢀⠀⠁⠀⠃⠇⡴⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⢸⢸⡆⠈⡰⡘⣼⢸⡄⣰⢨⢠⢀⠃⢰⠀⣣⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⢸⠸⢸⣡⣿⢻⣓⣾⡿⣸⣼⣜⣽⣇⣾⣇⠏⠀⠀⠀⠀⠀',
         -- '⠀⠀⠀⠀⠀⢨⣰⢈⢻⡿⠋⠉⠉⠓⢻⡿⠉⠈⣿⣿⠋⠀⠀⠀⠀⠀⠀',
         -- '⠀⠀⠀⠀⠀⠈⢹⣾⣯⣷⡀⠀⢀⡀⣐⡃⠀⣠⣿⢿⠀⠀⠀⠀⠀⠀⠀',
         -- '⠀⠀⠀⠀⠀⠀⠀⠃⢛⢻⠏⣐⣤⣀⣉⣴⠾⠻⣈⠞⡇⠁⠀⠀⠀⠀⠀',
         -- '⠀⠀⠀⠀⠀⠀⢀⣠⡔⣷⣧⣤⣀⠘⡏⣤⣶⡧⣿⣄⠀⠀⠀⠀⠀⠀⠀',
         -- '⢀⠤⠤⣴⣶⣿⣿⣿⣷⣌⠛⠻⢿⡀⣧⠟⢉⣰⣿⣿⣿⣷⣶⠀⠐⡄⠀',
         -- '⠜⡆⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣍⣭⣹⣿⣿⡿⠿⠟⠛⣿⡄⠀⠇⠀',
         -- '⠀⢰⠀⠀⣿⡇⢠⣀⡄⢹⣿⣿⣿⠀⠃⢸⣿⣿⡇⢸⣶⡇⣸⡇⠀⠀⣠',
         --
         -- '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣖⠲⠒⠶⣄⠀⠀⠀⠀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⠀⣠⢶⣞⡛⢠⣾⣿⣿⣿⣷⣄⠱⠦⣄⡀⠀ ',
         -- '⠀⠀⠀⠀⠀⠀⣰⣥⣾⣿⣇⢸⣿⣿⡿⣿⣿⣿⣿⣷⣤⠀⢆ ',
         -- '⢀⣤⣀⢀⡴⢞⣋⣽⣿⣿⣿⣷⣭⣭⣾⣿⣿⣿⣿⣿⣿⣧⢼ ',
         -- '⢻⠈⣟⣥⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣫⣶⣿⣿⣿⡿⢸ ',
         -- '⠀⢄⠘⢿⣿⣿⣟⣽⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⢁⠜ ',
         -- '⠀⠀⠁⠄⡙⣛⡋⢿⣿⣿⣿⡿⢿⣿⣿⣿⡿⠃⣻⠷⠚⠁ ⠀',
         -- '⠀⠀⠀⠀⠀⠈⠑⠤⣽⣉⡣⠴⠻⢽⣿⡧⠴⠊⠀⠀⠀⠀  ',

         '                                                     ',
         '  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
         '  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
         '  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
         '  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
         '  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
         '  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
         '                                                     ',
      }
      dashboard.section.buttons.val = {
         dashboard.button('<leader>fr', '󰈚  Recent Files', 'Telescope oldfiles<CR>'),
         dashboard.button('<leader>ff', '  Find File', ':Telescope find_files<CR>'),
         dashboard.button('<leader>th', '  Themes', ':Telescope colorscheme<CR>'),
         dashboard.button('s', '  Config', ':e .config/nvim<CR>'),
      }
      -- Send config to alpha
      alpha.setup(dashboard.opts)
   end,
}
