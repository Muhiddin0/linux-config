-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
-- Function to apply transparency settings globally

local function set_transparency()
  vim.cmd([[
        hi Normal guibg=NONE ctermbg=NONE
        hi NormalNC guibg=NONE ctermbg=NONE
        hi SignColumn guibg=NONE ctermbg=NONE
        hi StatusLine guibg=NONE ctermbg=NONE
        hi StatusLineNC guibg=NONE ctermbg=NONE
        hi VertSplit guibg=NONE ctermbg=NONE
        hi TabLine guibg=NONE ctermbg=NONE
        hi TabLineFill guibg=NONE ctermbg=NONE
        hi TabLineSel guibg=NONE ctermbg=NONE
        hi Pmenu guibg=NONE ctermbg=NONE
        hi PmenuSel guibg=NONE ctermbg=NONE
        hi NeoTreeNormal guibg=NONE ctermbg=NONE
        hi NeoTreeNormalNC guibg=NONE ctermbg=NONE
        hi NeoTreeWinSeparator guibg=NONE ctermbg=NONE
        hi NeoTreeEndOfBuffer guibg=NONE ctermbg=NONE
        hi EndOfBuffer guibg=NONE ctermbg=NONE
    ]])
end

-- Apply transparency settings initially
set_transparency()

-- Reapply transparency on buffer enter
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = set_transparency,
})
