require('avante').setup({
  provider = "claude-code",
  behaviour = {
    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
  },
  windows = {
    position = "right",
    width = 30,
  },
})
