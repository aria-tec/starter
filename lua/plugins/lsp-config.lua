return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      -- Kita menyisipkan (merge) config intelephense ke dalam tabel opts.servers yang sudah ada
      opts.servers = opts.servers or {}
      opts.servers.intelephense = {
        settings = {
          intelephense = {
            files = {
              -- Sesuai rekomendasi laravel.nvim untuk Eloquent completion
              maxSize = 2000000,
            },
          },
        },
      }
    end,
  },
}
