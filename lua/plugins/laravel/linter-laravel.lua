return {
  -- 1. Mason: Merge Ensure Installed
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "tlint",
      })
    end,
  },

  -- 2. nvim-lint: Merge Linters per Filetype
  {
    "mfussenegger/nvim-lint",
    opts = function(_, opts)
      -- Pastikan tabel linters_by_ft dari LazyVim tetap ada
      opts.linters_by_ft = opts.linters_by_ft or {}

      -- Menambahkan secara spesifik (tidak menimpa bahasa lain)
      opts.linters_by_ft.blade = { "tlint" }
      opts.linters_by_ft.php = { "tlint" }
    end,
  },
}
