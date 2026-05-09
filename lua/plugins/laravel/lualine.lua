return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    -- Kita masukkan ke dalam section lualine_x (biasanya di kanan)
    -- Anda bisa menggantinya ke lualine_y atau lualine_z sesuai selera
    table.insert(opts.sections.lualine_x, {
      function()
        local ok, laravel = pcall(require, "laravel")
        if ok then
          local status_ok, version = pcall(function()
            return laravel.app("status"):get("laravel")
          end)
          return status_ok and version or ""
        end
        return ""
      end,
      icon = { " ", color = { fg = "#F55247" } },
      cond = function()
        local ok, laravel = pcall(require, "laravel")
        return ok and laravel.app("status"):has("laravel")
      end,
    })

    table.insert(opts.sections.lualine_x, {
      function()
        local ok, laravel = pcall(require, "laravel")
        if ok then
          local status_ok, version = pcall(function()
            return laravel.app("status"):get("php")
          end)
          return status_ok and version or ""
        end
        return ""
      end,
      icon = { " ", color = { fg = "#AEB2D5" } },
      cond = function()
        local ok, laravel = pcall(require, "laravel")
        return ok and laravel.app("status"):has("php")
      end,
    })
  end,
}
