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

-- Remap hjkl (Heresy, I know, but I don't use querty)
keymap("", "k", "<Nop>", opts)
keymap("", "h", "<Nop>", opts)
keymap("", "j", "<Nop>", opts)
keymap("", "l", "<Nop>", opts)

keymap("", "f", "k", opts)
keymap("", "r", "h", opts)
keymap("", "s", "j", opts)
keymap("", "t", "l", opts)

-- Normal --
-- Open file explorer
keymap("n", "<leader>e", ":Lex 30<cr>", opts)
-- Save and Quit
keymap("n", "<leader>w", "<cmd>w<cr>", opts)
keymap("n", "<leader>q", "<cmd>q<cr>", opts)
-- Buffer control
keymap("n", "<leader>bl", "<cmd>ls<cr>", opts)
keymap("n", "<leader>bn", "<cmd>bnext<cr>", opts)
keymap("n", "<leader>bd", "<cmd>bd<cr>", opts)
keymap("n", "<leader>bD", "<cmd>bD<cr>", opts)

-- Window navigation: Alt-(frst)
keymap("n", "<A-f>", "<C-w>k", opts)
keymap("n", "<A-r>", "<C-w>h", opts)
keymap("n", "<A-s>", "<C-w>j", opts)
keymap("n", "<A-t>", "<C-w>l", opts)

----------
-- Misc --
----------

keymap("n", "<leader>tf", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", opts)

------------
-- Insert --
------------
keymap("i", ";;", "<Esc>", opts)
