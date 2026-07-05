if not vim.g.neovide then
  return
end

vim.o.guifont = "FiraCode Nerd Font:h11"
vim.opt.linespace = 0

vim.g.neovide_theme = "auto"
vim.g.neovide_scale_factor = 1.0
vim.g.neovide_padding_top = 8
vim.g.neovide_padding_bottom = 8
vim.g.neovide_padding_right = 8
vim.g.neovide_padding_left = 8

vim.g.neovide_text_gamma = 0.0
vim.g.neovide_text_contrast = 0.5
vim.g.neovide_pixel_geometry = "RGBH"

vim.g.neovide_refresh_rate = 144
vim.g.neovide_refresh_rate_idle = 5
vim.g.neovide_no_idle = false
vim.g.neovide_remember_window_size = true
vim.g.neovide_confirm_quit = true
vim.g.neovide_detach_on_quit = "always_quit"
vim.g.neovide_fullscreen = false

vim.g.neovide_opacity = 1.0
vim.g.neovide_normal_opacity = 1.0
vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_blur_amount_x = 2.0
vim.g.neovide_floating_blur_amount_y = 2.0
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5
vim.g.neovide_floating_corner_radius = 0.2

vim.g.neovide_progress_bar_enabled = true
vim.g.neovide_progress_bar_height = 3.0
vim.g.neovide_progress_bar_animation_speed = 200.0
vim.g.neovide_progress_bar_hide_delay = 0.2
vim.g.neovide_hide_mouse_when_typing = true
vim.g.neovide_message_area_drag_selection = true
vim.g.neovide_underline_stroke_scale = 1.0

vim.g.neovide_cursor_animation_length = 0.08
vim.g.neovide_cursor_short_animation_length = 0.04
vim.g.neovide_cursor_trail_size = 0.4
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_cursor_animate_in_insert_mode = true
vim.g.neovide_cursor_animate_command_line = true
vim.g.neovide_cursor_unfocused_outline_width = 0.125
vim.g.neovide_cursor_smooth_blink = false
vim.g.neovide_scroll_animation_length = 0.2
vim.g.neovide_scroll_animation_far_lines = 1

vim.g.neovide_input_ime = false

local function set_ime(args)
  vim.g.neovide_input_ime = args.event:match("Enter$") ~= nil
end

local ime_group = vim.api.nvim_create_augroup("neovide_ime_input", { clear = true })
vim.api.nvim_create_autocmd({ "InsertEnter", "InsertLeave" }, {
  group = ime_group,
  pattern = "*",
  callback = set_ime,
})
vim.api.nvim_create_autocmd({ "CmdlineEnter", "CmdlineLeave" }, {
  group = ime_group,
  pattern = "[/\\?]",
  callback = set_ime,
})

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

vim.keymap.set({ "n", "v", "i" }, "<F11>", function()
  vim.g.neovide_fullscreen = not vim.g.neovide_fullscreen
end, { desc = "Neovide: toggle fullscreen" })
