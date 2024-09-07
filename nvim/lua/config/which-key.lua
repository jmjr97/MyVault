local wk = require("which-key")
wk.add({
   -- Buffer
  { "<leader>b", group = "Buffers" },
  { "<leader>bb", desc = "Close Buffer" },
  { "<leader>bd", desc = "Close Buffer w/o Saving" },
  { "<leader>bm", desc = "Max Vertical Split" },
  { "<leader>br", desc = "Reset Split" },
  -- Find
  { "<leader>f", group = "File" },
  { "<leader>fa", desc = "Tree Find File" },
  { "<leader>fe", desc = "Tree Toggle" },
  -- Search
  { "<leader>s", group = "Search" },
  { "<leader>sf", desc = "File" },
  { "<leader>sF", desc = "File w/ Preview" },
  { "<leader>sg", desc = "Live Grep" },
  { "<leader>sr", desc = "Recent Files" },
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
  -- Yank to Clipboard
  { "<leader>y", desc = "Yank to Clipboard" },
  -- Noice
  { "<leader>d", desc = "Dismiss Notifications" },
})
