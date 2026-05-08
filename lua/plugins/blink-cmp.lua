-- File: ~/.config/nvim/lua/plugins/blink.lua
return {
  "saghen/blink.cmp",
  opts = function(_, opts)
    -- 1. Pastikan tabel default ada agar tidak error
    opts.sources.default = opts.sources.default or {}

    -- 2. Tambahkan 'laravel' ke daftar utama jika belum ada
    if not vim.tbl_contains(opts.sources.default, "laravel") then
      table.insert(opts.sources.default, "laravel")
    end

    -- 3. Daftarkan providernya dengan prioritas tinggi
    opts.sources.providers = opts.sources.providers or {}
    opts.sources.providers.laravel = {
      name = "laravel",
      module = "blink.compat.source",
      score_offset = 95, -- Biar muncul paling atas
    }
  end,
}
