require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g

o.cursorlineopt ='both' -- to enable cursorline!
o.relativenumber = true

if vim.env.SSH_TTY ~= nil then
g.clipboard = {
    name = 'OSC52',
    copy = {
        ['+'] = require('vim.ui.clipboard.osc52').copy('+'),
        ['*'] = require('vim.ui.clipboard.osc52').copy('*'),
    },
    paste = {
        ['+'] = require('vim.ui.clipboard.osc52').paste('+'),
        ['*'] = require('vim.ui.clipboard.osc52').paste('*'),
        -- ['+'] = no_paste("+"),
        -- ['*'] = no_paste("*"),
    },
}
end
