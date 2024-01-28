--vim脚本在lua中需要以vim.cmd来包裹

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.g.mapleader = " "

-- 添加包管理器
local lazypath = vim.fn.stdpath("data").."/lazy/lazy.vim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git","clone","--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath})
end
vim.opt.rtp:prepend(lazypath)
local plugins={
  -- 安装主题插件
  {
    "catppuccin/nvim",
    name="catppuccin",
    priority=1000
  },
  -- 安装模糊查找器 telescope
  {
    "nvim-telescope/telescope.nvim",
    tag="0.1.5",
    dependencies={"nvim-lua/plenary.nvim"}
  },
  -- 安装treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build=":TSUpdate"
  },
  -- 安装neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
}
require("lazy").setup(plugins)

-- 配置主题插件 catppuccin
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- 配置telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {}) -- n means "normal mode"
  -- 改变picker的样式
  require("telescope").setup{
    pickers = {
      find_files = { theme = "cursor" }
    }
  }
  -- live_grep
  vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

-- 配置treesitter
local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed={"lua"},
  highlight={enable=ture},
  indent={enable=ture},
})

-- 配置neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})


