local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- lazy.nvim
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "cpp" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },
  { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
}, {
  checker = { enabled = true, notify = false },
})

-- global options
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamedplus"
vim.opt.fileencoding = "utf-8"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.ignorecase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.belloff = "all"

-- window-local
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

-- buffer-local
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- syntax highlighting
vim.cmd('syntax on')
vim.opt.background = "dark"

vim.cmd([[colorscheme gruvbox]])

