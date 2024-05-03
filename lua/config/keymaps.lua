-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = LazyVim.safe_keymap_set

-- floating terminal
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
map("n", "<c-\\>", lazyterm, { desc = "Terminal (Root Dir)" })

map("t", "<C-\\>", "<cmd>close<cr>", { desc = "Show/hide Terminal" })

-- buffers
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- Neotree
map("n", "<leader>ft", "<Cmd>Neotree toggle<CR>", { desc = "Show/hide Neotree" })

-- lazygit
map("n", "<leader>gl", function()
  LazyVim.lazygit({ cwd = LazyVim.root.git() })
end, { desc = "Lazygit (Root Dir)" })
map("n", "<leader>gb", LazyVim.lazygit.blame_line, { desc = "Git Blame Line" })

-- Resize window using <ctrl> arrow keys
map("n", "<Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Clear search with <esc>
map({ "n" }, "<esc>", ":noh<cr><esc>")
map("n", "gw", "*N")
map("x", "gw", "*N")
