-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("lazy").setup({
  { "ayu-theme/ayu-vim" }, -- The ayu colorscheme plugin
})

vim.cmd("colorscheme ayu")
