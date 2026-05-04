return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  -- ATAU gunakan fungsi untuk lebih aman:
  -- build = function() vim.cmd("TSUpdate html") end,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
  },
  opts = {
    -- konfigurasi kamu di sini
  },
}
