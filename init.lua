
--Rename space as leader key
--keymap(" ", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 添加包管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)
--local plugins={}
require('lazy').setup("plugins")

--vim脚本在lua中需要以vim.cmd来包裹

require "user.options"
require "user.keymaps"
