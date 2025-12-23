-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
    theme = "gruvchad",

    -- hl_override = {
    -- 	Comment = { italic = true },
    -- 	["@comment"] = { italic = true },
    -- },
}

M.ui = {
    statusline = {
        theme = "vscode_colored",
        separator_style = "default",
        order = { "mode", "file", "git", "symbol", "%=", "lsp_msg", "%=", "lsp", "cwd", "cursor" },
        modules = {
            symbol = function ()
                local tb = require('aerial').get_location()
                if tb[1] and tb[1].name and tb[1].icon then
                    if tb[1].name == "symbol" then return "" end
                    return "  " .. tb[1].icon .. tb[1].name
                end
                return ""
            end
        }
    },

  telescope = { style = "bordered" },
}

M.nvdash = {
      load_on_startup = true,

      header = {
        '           ▌▀  ▀█   ____         ▄▄▄▄           ',
        '           ▀▄   ▀▀▀"""""""▀▀▀▀W▄▄█"  ▐█         ',
        '         _▄w⌐                  ""   ▓▀          ',
        '      _▄▀"                          ▀▓▄         ',
        '     █▀       _▄▄▄         ,▄_        ▐█▄       ',
        '   ▐█                        "▀         ▐█¡     ',
        '  ▌▀          _¿¿_                        █¡    ',
        ' ▐█          ▐██,█▄       _█▀▀▓           ▐█    ',
        ' █Γ      |▄_,╛▀██▀        ▌█▓▓█ⁿ           █ì   ',
        ' █ì     ╠▀╨▀▐▀       ▐▄     ""╩▓M▓_▄       █Γ   ',
        " ▌█       ''''      ▀▀▀▀      '`' ▀╩       █ì   ",
        '  █¡                 ▀\'                  ▌▀    ',
        '   █▄                                    ▄█     ',
        '    ▀█¡                                 ▓▀      ',
        '      ▐█                             _▓▀        ',
        ' Powered By  RX'
      },

  buttons = {
    { txt = "  Find File", keys = "ff", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "fo", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "fw", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "th", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "ch", cmd = "NvCheatsheet" },
    { txt = "  Projects", keys = "pp", cmd = "Telescope projects"},

    { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}


return M
