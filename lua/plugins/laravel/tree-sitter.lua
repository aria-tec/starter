return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Pastikan ensure_installed adalah sebuah tabel
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "blade", "php_only" })
      end
    end,
  },
}
