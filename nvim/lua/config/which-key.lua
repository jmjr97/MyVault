local wk = require("which-key")
wk.add({
   -- Buffer
  { "<leader>b", group = "Buffers" },
  { "<leader>bb", desc = "Close Buffer" },
  { "<leader>bd", desc = "Close Buffer w/o Saving" },
  { "<leader>bm", desc = "Max Vertical Split" },
  { "<leader>br", desc = "Reset Split" },
  -- Find
  { "<leader>f", group = "Find" },
  { "<leader>ff", desc = "File" },
  { "<leader>fF", desc = "File w/ Preview" },
  { "<leader>fg", desc = "Live Grep" },
  { "<leader>fr", desc = "Recent Files" },
  -- Search
  { "<leader>s", group = "Search" },
  { "<leader>sh", desc = "Help" },
  { "<leader>sm", desc = "max" },
  -- Window
  { "<leader>v", group = "Wiki" },
  -- LSP Handler
  { "<leader>l", group = "LSP Handler" },
  { "<leader>lr", desc = "Tele References" },
  { "<leader>ld", desc = "Tele Definition" },
  { "<leader>lD", desc = "Declaration" },
  { "<leader>la", desc = "Code Actions" },
  { "<leader>lR", desc = "Smart Rename" },
  { "<leader>lo", desc = "Diagnostics Open" },
  { "<leader>ln", desc = "Diagnostics Next" },
  { "<leader>lp", desc = "Diagnostics Previous" },
  { "<leader>lk", desc = "Hover Documentation" },
  -- Clipboard
  { "<leader>y", desc = "Yank to Clipboard" },
  { "<leader>p", desc = "Paste from Clipboard" },
  -- Noice
  { "<leader>d", desc = "Dismiss Notifications" },
  -- Obsidian
  { "<leader>o", group = "Obsidian" },
  { "<leader>og", desc = "Grep" },
  { "<leader>oh", desc = "Home" },
  { "<leader>on", desc = "New File" },
  { "<leader>os", desc = "Switch" },
  { "<leader>ot", desc = "ToC" },
})
