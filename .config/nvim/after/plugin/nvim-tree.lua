require('nvim-tree').setup({
  view = {
    side = "right",
  },
})

vim.keymap.set('n', '<F3>', ':NvimTreeToggle<CR>')
