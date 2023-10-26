local mapkey = require("util.keymapper").mapkey

-- Buffer Navigation
mapkey("<S-l>", "bnext", "n") -- Next buffer
mapkey("<S-h>", "bprevious", "n") -- Prev buffer
mapkey("<tab>", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>`", "NvimTreeToggle", "n")
mapkey("<leader>`", "NvimTreeToggle", "v")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
-- mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
-- mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
-- mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
-- mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
-- mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
-- mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
-- mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
-- mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Resize with arrows
mapkey("<A-j>", "resize -2", "n")
mapkey("<A-k>", "resize +2", "n")
mapkey("<A-l>", "vertical resize +2", "n")
mapkey("<A-h>", "vertical resize -2", "n")

-- Window Management
mapkey("<leader>ll", "vsplit", "n") -- Split Vertically
mapkey("<leader>jj", "split", "n") -- Split Horizontally

-- Show Full File-Path
mapkey("<leader>t", "echo expand('%:p')", "n") -- Show Full File Path

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<a-j>", ":m '>+1<cr>gv=gv", opts)
keymap("v", "<a-k>", ":m '<-2<cr>gv=gv", opts)
keymap("v", "p", '"_dp', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

local api = vim.api
api.nvim_set_keymap("n", "<A-q>", "gcc", { noremap = false })
api.nvim_set_keymap("v", "<A-q>", "gcc", { noremap = false })
