if vim.loader and vim.fn.has "nvim-0.9.1" == 1 then vim.loader.enable() end

for _, source in ipairs {
  "astronvim.bootstrap",
  "astronvim.options",
  "astronvim.lazy",
  "astronvim.autocmds",
  "astronvim.mappings",
} do
  local status_ok, fault = pcall(require, source)
  if not status_ok then vim.api.nvim_err_writeln("Failed to load " .. source .. "\n\n" .. fault) end
end

if astronvim.default_colorscheme then
  if not pcall(vim.cmd.colorscheme, astronvim.default_colorscheme) then
    require("astronvim.utils").notify(
      ("Error setting up colorscheme: `%s`"):format(astronvim.default_colorscheme),
      vim.log.levels.ERROR
    )
  end
end
vim.api.nvim_set_keymap("n", "<C-v>", '"+p', { noremap = true })
vim.api.nvim_set_keymap("v", "<C-c>", '"+y', { noremap = true })
-- set ctrl + s to save
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { noremap = true })
-- also set ctrl + s to save in insert mode too
vim.api.nvim_set_keymap("i", "<C-s>", "<ESC>:w<CR>", { noremap = true })
-- set ctrl + w to close buffer
vim.api.nvim_set_keymap("n", "<C-w>", ":bd<CR>", { noremap = true })

require("astronvim.utils").conditional_func(astronvim.user_opts("polish", nil, false), true)
