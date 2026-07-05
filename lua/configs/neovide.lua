-- Neovide-only UI settings.
vim.o.guifont = "FiraCode Nerd Font:h11"

vim.g.neovide_scale_factor = 1.0
vim.g.neovide_padding_top = 8
vim.g.neovide_padding_bottom = 8
vim.g.neovide_padding_right = 8
vim.g.neovide_padding_left = 8

vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_no_idle = false
vim.g.neovide_remember_window_size = true
vim.g.neovide_confirm_quit = true

vim.g.neovide_opacity = 1.0
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0

vim.g.neovide_cursor_animation_length = 0.08
vim.g.neovide_cursor_short_animation_length = 0.04
vim.g.neovide_cursor_trail_size = 0.4
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_scroll_animation_length = 0.2

local function change_scale(delta)
  vim.g.neovide_scale_factor = math.max(0.5, vim.g.neovide_scale_factor + delta)
end

vim.keymap.set({ "n", "v", "i" }, "<C-=>", function()
  change_scale(0.1)
end, { desc = "Neovide: increase UI scale" })

vim.keymap.set({ "n", "v", "i" }, "<C-->", function()
  change_scale(-0.1)
end, { desc = "Neovide: decrease UI scale" })

vim.keymap.set({ "n", "v", "i" }, "<C-0>", function()
  vim.g.neovide_scale_factor = 1.0
end, { desc = "Neovide: reset UI scale" })
