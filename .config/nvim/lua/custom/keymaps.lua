-- keymaps
local M = {}

-- basic keymap
function M.basic()
  vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear highlight' })
  vim.keymap.set('n', '<leader><leader>x', '<cmd>source %<CR>', { desc = 'Source current file' })
end

-- telescope keymap
function M.telescope()
  local builtin = require('telescope.builtin')
  vim.keymap.set('n', '<leader>tf', builtin.find_files, { desc = 'Telescope find files' })
  vim.keymap.set('n', '<leader>tg', builtin.live_grep,  { desc = 'Telescope live grep' })
  vim.keymap.set('n', '<leader>tb', builtin.buffers,    { desc = 'Telescope buffers' })
  vim.keymap.set('n', '<leader>th', builtin.help_tags,  { desc = 'Telescope help tags' })
end

-- diagnostic
function M.diagnostic()
  vim.keymap.set('n', '<leader>dt', function()
    local new_conf = not vim.diagnostic.config().virtual_text
    vim.diagnostic.config({ virtual_text = new_conf })
  end, { desc = 'Toggle diagnostic virtual text' })
end


-- terminal
function M.terminal()
  vim.keymap.set('n', '<leader>T', ':ToggleTerm<CR>', { desc = 'Toggle terminal'})
end

return M
