local hop = require('hop')
local directions = require('hop.hint').HintDirection

vim.keymap.set('n', '<Leader><Leader>f', function()
    hop.hint_words({ direction = directions.AFTER_CURSOR, cursor_line_only = false, hint_offset = 0 })
end, { noremap = true })

vim.keymap.set('n', '<Leader><Leader>t', function()
    hop.hint_words({ direction = directions.BEFORE_CURSOR, cursor_line_only = false, hint_offset = 0 })
end, { noremap = true })
