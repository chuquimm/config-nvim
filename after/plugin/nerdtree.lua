local builtin = require('telescope.builtin')
local vim = vim
-- vim.keymap.set('n', '<leader>n', ':NERDTreeFocus<CR>', {})
-- vim.keymap.set('n', '<leader>nn', ':NERDTree<CR>', {})
vim.keymap.set('n', '<C-[>', ':NERDTreeToggle<CR>', {})
vim.keymap.set('n', '<leader>n', ':NERDTreeFind<CR>', {})
