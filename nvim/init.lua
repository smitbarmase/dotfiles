-- Setup packer
vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'sainnhe/gruvbox-material'
  use 'neovim/nvim-lspconfig'
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
end)

-- Setup treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "cpp", "lua", "vim" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- Setup lsp
require'lspconfig'.clangd.setup {}

-- Set global options
vim.opt.mouse = "a"
vim.opt.clipboard = "unnamed"
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

-- Set window-local options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

-- Set buffer-local options
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Set background
vim.opt.background = "dark"

-- Configure gruvbox-material
vim.g.gruvbox_material_background = 'hard'
vim.g.gruvbox_material_better_performance = 1

-- Enable syntax highlighting
vim.cmd('syntax on')

-- Set colorscheme
vim.cmd('colorscheme gruvbox-material')

-- Define key mappings
--vim.api.nvim_set_keymap('n', '<C-c>', ':! clear && g++-12 -DLOCAL -O2 -std=c++17 % && ./a.out < ~/cp/input.txt && rm a.out<CR>', { noremap = true, silent = true })
