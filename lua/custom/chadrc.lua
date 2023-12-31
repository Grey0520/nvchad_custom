---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
-- local highlights = require "custom.highlights"

M.lazy_nvim = {
  performance = {
    rtp = {
      disabled_plugins = vim.tbl_filter(function(name)
        return string.sub(name, 1, 5) ~= "netrw"
      end, require("plugins.configs.lazy_nvim").performance.rtp.disabled_plugins),
    },
  },
}

M.ui = {
  theme = "chadracula",
  -- theme_toggle = { "onedark", "one_light" },

  statusline = {
    separator_style = "block",
  },

  -- nvdash = {
  --   load_on_startup = true,
  -- },
  --

  -- enable leetcode plugin when I input 'nvim leetcode.nvim'
  leetcode = {
    enable = false,
  },

  -- hl_override = highlights.override,
  -- hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
