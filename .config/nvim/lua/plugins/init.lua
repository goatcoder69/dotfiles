local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

return {
  { "nvim-treesitter/nvim-treesitter", build=":TSUpdate" },
  -- https://github.com/elbywan/crystalline?tab=readme-ov-file#vimneovim
  { "neoclide/coc.nvim", branch="release" },
  "vim-crystal/vim-crystal"
}
