-- hover.nvim key keymaps
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
keymap('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
keymap('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
keymap('n', '<A-&>', '<Cmd>BufferGoto 1<CR>', opts)
keymap('n', '<A-é>', '<Cmd>BufferGoto 2<CR>', opts)
keymap('n', '<A-">', '<Cmd>BufferGoto 3<CR>', opts)
keymap('n', '<A-\'>', '<Cmd>BufferGoto 4<CR>', opts)
keymap('n', '<A-(>', '<Cmd>BufferGoto 5<CR>', opts)
keymap('n', '<A-§>', '<Cmd>BufferGoto 6<CR>', opts)
keymap('n', '<A-è>', '<Cmd>BufferGoto 7<CR>', opts)
keymap('n', '<A-!>', '<Cmd>BufferGoto 8<CR>', opts)
keymap('n', '<A-ç>', '<Cmd>BufferGoto 9<CR>', opts)
keymap('n', '<A-à>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
keymap('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
keymap('n', '<A-l>', '<Cmd>BufferCloseBuffersLeft<CR>', opts)
keymap('n', '<A-r>', '<Cmd>BufferCloseBuffersRight<CR>', opts)
keymap('n', '<A-a>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)
-- Magic buffer-picking mode
keymap('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
keymap('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
keymap('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
keymap('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
keymap('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)
