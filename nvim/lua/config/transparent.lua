return {
  {
    "xiyaowong/transparent.nvim",
    config = function()
      require("transparent").setup({
        enable = true,   -- Transparent backgroundni yoqish
        extra_groups = { -- Ushbu guruhlarni ham shaffof qilish
          "NormalFloat", "NvimTreeNormal", "TelescopeNormal",
          "TelescopePrompt", "FloatBorder"
        },
        exclude_groups = {}, -- Qaysi guruhlarni o‘zgartirmaslik kerak bo‘lsa, shu yerga yozish mumkin
      })
    end,
  },
}
