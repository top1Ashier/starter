local opts = {
  backends = { "lsp", "treesitter", "markdown", "asciidoc", "man" },
  disable_max_lines = 100000,
  disable_max_size = 20000000,
  -- A list of all symbols to display. Set to false to display all symbols.
  -- This can be a filetype map (see :help aerial-filetype-map)
  -- To see all available values, see :help SymbolKind
  filter_kind = {
    "Class",
    "Constructor",
    "Constant",
    "Enum",
    "Function",
    "Interface",
    "Module",
    "Method",
    "Struct",
  },
  -- Determines how the aerial window decides which buffer to display symbols for
  --   window - aerial window will display symbols for the buffer in the window from which it was opened
  --   global - aerial window will display symbols for the current window
  attach_mode = "global",

}

return opts
