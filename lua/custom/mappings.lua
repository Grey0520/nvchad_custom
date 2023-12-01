---@type MappingsTable
local M = {}

M.copilot = {
  i = {
    ["<C-l>"] = {
      function()
        vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
      end,
      "Copilot Accept",
      {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
    }
  }
}

M.leetcode = {
-- plugin = true,

  n = {
    ["<leader>l"] = {
    "Leetcode"
  },
    ["<leader>ll"] = {
      function()
        vim.cmd("Leet")
      end,
      "Open LeetCode dashboard",
    },

    ["<leader>lc"] = {
      function()
        vim.cmd("Leet console")
      end,
      "Open LeetCode console",
    },

    ["<leader>li"] = {
      function()
        vim.cmd("Leet info")
      end,
      "Open LeetCode question info",
    },

    ["<leader>lt"] = {
      function()
        vim.cmd("Leet tabs")
      end,
      "Open LeetCode tabs",
    },

    ["<leader>lr"] = {
      function()
        vim.cmd("Leet run")
      end,
      "Run current LeetCode question",
    },

    ["<leader>ls"] = {
      function()
        vim.cmd("Leet submit")
      end,
      "Submit current LeetCode question",
    },

    ["<leader>ld"] = {
      function()
        vim.cmd("Leet daily")
      end,
      "Open daily LeetCode question",
    },

    ["<leader>lR"] = {
      function()
        vim.cmd("Leet random")
      end,
      "Open random LeetCode question",
    },

    ["<leader>lls"] = {
      function()
        vim.cmd("Leet list")
      end,
      "Open LeetCode list",
    },
  },
}


M.general = {
  -- n = {
  --   [";"] = { ":", "enter command mode", opts = { nowait = true } },
  -- },
  t = {
    ["<ESC>"] = { "<C-\\><C-n>", "escape terminal mode", opts = { nowait = true } },
  },
}

-- more keybinds!

M.eft = {
  n = {
    f = { "<Plug>(eft-f)", "eft-f" },
    F = { "<Plug>(eft-F)", "eft-F" },
    t = { "<Plug>(eft-t)", "eft-t" },
    T = { "<Plug>(eft-T)", "eft-T" },
    [";"] = { "<Plug>(eft-repeat)", "eft-repeat" },
  },
}

M.accelerated_jk = {
  n = {
    j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
    k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
  },
}

M.telescope = {
  n = {
    ["<leader>fs"] = { "<cmd> Telescope lsp_document_symbols symbol_width=50 <CR>", "lsp document symbols" },
  },
}

M.hop = {
  n = {
    ["<leader><leader>w"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader><leader>b"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
    ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
  },
}

return M
