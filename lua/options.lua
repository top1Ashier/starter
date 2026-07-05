require "nvchad.options"

if vim.g.neovide then
  require "configs.neovide"
end

-- add yours here!

local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

o.relativenumber = true

vim.api.nvim_create_autocmd({'bufEnter', 'BufWinEnter'}, {
  pattern = {'*.c', '*.h'},
  callback = function ()
    o.tabstop = 4
    o.shiftwidth = 4
    o.expandtab = true
    o.cindent = true
  end
})

-- TODO: reset indent when leaving *.c or *.h
vim.api.nvim_create_autocmd({'BufLeave'}, {
  pattern = {'*.c', '*.h'},
  callback = function ()
    -- o.tabstop = vim.lsp.util.get_effective_tabstop()
    -- o.shiftwidth = 4
    -- o.expandtab = true
    -- o.cindent = false
  end
})
