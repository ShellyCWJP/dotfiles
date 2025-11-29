return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  keys = {
    { ",f", function() Snacks.picker.files() end, desc = "Find Files" },
    { ",g", function() Snacks.picker.grep() end, desc = "Grep" },
    { ",b", function() Snacks.picker.buffers() end, desc = "Buffers" },
    { "<leader>t", function() Snacks.terminal.toggle() end, desc = "Toggle terminal" },
  },
  ---@type snacks.Config
  opts = {
    animate = { enabled = true },
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      sections = {
        { section = "header" },
        { section = "keys", gap = 1, padding = 1 },
        { section = "recent_files", padding = 1 },
        { section = "terminal", cmd = "git status -sb 2>/dev/null || echo 'Not a git repository'", height = 5, padding = 1 },
        { section = "startup" },
      },
    },
    git = { enabled = true },
    image = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    notify = { enabled = true },
    picker = { enabled = true },
    rename = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    terminal = {
      win = {
        position = "float",
      },
    },
    win = { enabled = true },
  },
}
