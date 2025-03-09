return {
  "akinsho/git-conflict.nvim",
  version = "*",
  config = function()
    require("git-conflict").setup({
      default_mappings = true,     -- Konflikt hal qilish uchun tugmalar
      disable_diagnostics = false, -- Konflikt joyida LSP xatolarini o'chirish
      highlights = {               -- Konfliktni aniq ko'rsatish
        incoming = "DiffText",
        current = "DiffAdd",
      },
    })
  end,
}
