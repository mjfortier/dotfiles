local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


-- Modes
--   "n" - normal
--   "i" - insert
--   "x" - visual
--   "v" - visual + selection
--   "t" - terminal
--   "c" - command (?)
--   "o" - operator-pending
--   ""  - normal + visual + operator-pending

-------------
-- General --
-------------

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Open file explorer
keymap("n", "<leader>e", ":Lexplore 30<cr>", opts)
-- Save and Quit
keymap("n", "<leader>s", "<cmd>w<cr>", opts)
keymap("n", "<leader>q", "<cmd>q<cr>", opts)
-- Buffer control
keymap("n", "<leader>bl", "<cmd>ls<cr>", opts)
keymap("n", "<leader>bn", "<cmd>bnext<cr>", opts)
keymap("n", "<leader>bd", "<cmd>bd<cr>", opts)
keymap("n", "<leader>bD", "<cmd>bD<cr>", opts)
-- Window control
keymap("n", "<leader>w", "<C-w>", opts)
----------
-- Misc --
----------

keymap("n", "<leader>tf", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", opts)

------------
-- Insert --
------------
keymap("i", ";;", "<Esc>", opts)
