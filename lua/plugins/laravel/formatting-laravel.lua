return {
  -- 1. Mason: Menggunakan fungsi untuk merge list
  {
    "mason-org/mason.nvim", -- Pastikan nama plugin benar
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "blade-formatter",
        "pint",
        "tlint", -- Tambahkan tlint sekalian jika ingin linter
      })
    end,
  },

  -- 2. Conform: Menggunakan fungsi untuk merge tabel
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Pastikan tabel formatters_by_ft ada
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- Menambahkan secara spesifik tanpa menghapus yang lain
      opts.formatters_by_ft.blade = { "blade-formatter" }
      opts.formatters_by_ft.php = { "pint" }

      -- Opsi tambahan: atur format_on_save jika Anda mau
      opts.format_on_save = { timeout_ms = 500, lsp_fallback = true }
    end,
  },
}
