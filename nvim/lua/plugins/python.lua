return {
  "linux-cultist/venv-selector.nvim",
  dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
  config = function()
    require("venv-selector").setup({
      auto_refresh = true,
      search_venv_managers = true,
      parents = 2,               -- 2 darajagacha yuqoriga qidiring
      name = { ".venv", "venv" } -- Virtual muhit nomlari
    })
  end,
  keys = {
    { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Virtual muhitni tanlash" },
  },
}
