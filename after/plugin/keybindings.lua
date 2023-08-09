local tree_exec = require'neo-tree.command'.execute

-- Ctrl Z en Y
vim.keymap.set({'n', 'v', 'i'}, '<C-z>', vim.cmd.undo)
vim.keymap.set({'n', 'v', 'i'}, '<C-y>', vim.cmd.redo)

-- gebruik win32yank als system clipboard
vim.cmd([[ set clipboard+=unnamed ]])

-- Uit terminal met esc
vim.keymap.set('t', '<Esc>', '<C-\\><C-n>')

-- neo-tree toggle
vim.keymap.set('n', ']tt', function()
  tree_exec({
    action = 'focus',
    source = 'filesystem',
    -- position = 'left',
    toggle = true,
    -- dir = '.',
  })
end)

-- Ctrl save pls
vim.keymap.set({'n', 'v', 'i'}, '<C-s>', vim.cmd.w)
