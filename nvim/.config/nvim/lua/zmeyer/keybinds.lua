local keybinds = {}

function keybinds.bind()
  vim.keymap.set('i', 'jh', '<ESC>')
  -- Inpsired by DOOM Emacs.
  -- Leader key to do window shifting.
  vim.keymap.set('n', '<leader>wv', '<C-w>v')
  vim.keymap.set('n', '<leader>ws', '<C-w>s')
  vim.keymap.set('n', '<leader>wh', '<C-w>h')
  vim.keymap.set('n', '<leader>wj', '<C-w>j')
  vim.keymap.set('n', '<leader>wk', '<C-w>k')
  vim.keymap.set('n', '<leader>wl', '<C-w>l')
  vim.keymap.set('n', '<leader>ztt', '<cmd>tabnew<cr>')
  vim.keymap.set('n', '<leader>ztn', '<cmd>tabnext<cr>')
  vim.keymap.set('n', '<leader>ztp', '<cmd>tabprevious<cr>')
  vim.keymap.set('t', 'jh', '<C-\\><C-n>')
  vim.keymap.set('t', '<C-[>', '<C-\\><C-n>')
end

return keybinds
