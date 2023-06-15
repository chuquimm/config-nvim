vim.o.timeout = true
vim.o.timeoutlen = 300
local wk = require("which-key")
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
local mappings = {}
local opts = {}
wk.register(mappings, opts)

