local opts = { noremap = true, silent = false }

local term_opts = { silent = true }

--Shorten function name
local keymap = vim.api.nvim_set_keymap

--Rename space as leader key
--keymap(" ", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

--Modes
--  normal_mode = "n"
--  indert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  terminal_mode = "t"
--  command_mode = "c"

-- Normal --
--Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Resize the buffers
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

--Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--  Insert --
--Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

--Move the cursor
keymap("i", "<C-h>", "<ESC>i", {})
keymap("i", "<C-l>", "<ESC>la", {})
keymap("i", "<C-j>", "<ESC>ja", {})
keymap("i", "<C-k>", "<ESC>ka", {})

--  Visual --
--Stay in indentmode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

--Paste won't change
keymap("v", "p", '"_dP', opts)

-- Visual Block --
--Move text up and down
keymap("x", "<A-j>", ":m '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv-gv", opts)

-- Terminal --
--Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- About plugins --
-- 配置neo-tree
vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
