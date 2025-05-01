---------------------------
--- Setting Vim Options ---
---------------------------
vim.o.relativenumber = true
--vim.o.setnumber = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.opt.termguicolors = true

---------------------------
--- Setting Colorscheme ---
---------------------------
vim.cmd.colorscheme "catppuccin-mocha" -- To add colorschems add them to the themes.lua file inside of lua/plugins/

----------------
--- Keymaps: ---
----------------

--- General: ---
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<leader>hh", "<CMD>Alpha<CR>")

-- Movement Throughout Windows Using Vim Motions:
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--- Telescope: ---
vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", {})
vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", {})
vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", {})

--- LSP Bindings: ---
vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, {desc = "LSP Definition"} )
vim.keymap.set("n", "<leader>lh", vim.lsp.buf.hover, {desc = "LSP Hover Action"} )
vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {desc = "LSP Code Action"} )
vim.keymap.set("n", "<leader>lm", "<CMD>Mason<CR>", {desc = "Open Mason"} )

--- None-LS ---
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format, {desc = "LSP Format"} )

--- NeoTree ---
vim.keymap.set("n", "<leader>tt", ":Neotree filesystem Toggle left<CR>", {desc = "Toggle File Tree"} )
--- NeoMiniMap ---
vim.keymap.set("n", "<leader>mm", "<cmd>Neominimap Toggle<CR>", {desc = "Toggle MiniMap"} )
vim.keymap.set("n", "<leader>mr", "<cmd>Neominimap refresh<CR>", {desc = "Refresh MiniMap"} )

--- TODO-Comments ---
vim.keymap.set("n", "<leader>tl", "<CMD>TodoTelescope<CR>", {desc = "Open TODO in Telescope"} )
vim.keymap.set("n", "<leader>cn", function()
  require("todo-comments").jump_next()
end )

vim.keymap.set("n", "<leader>cp", function()
  require("todo-comments").jump_prev()
end )

--- Buffers: ---
vim.keymap.set("n", "<leader>b1", "<CMD>BufferGoto 1<CR>", {desc = "Go To Buffer 1"} )
vim.keymap.set("n", "<leader>b2", "<CMD>BufferGoto 2<CR>", {desc = "Go To Buffer 2"} )
vim.keymap.set("n", "<leader>b3", "<CMD>BufferGoto 3<CR>", {desc = "Go To Buffer 3"} )
vim.keymap.set("n", "<leader>b4", "<CMD>BufferGoto 4<CR>", {desc = "Go To Buffer 4"} )
vim.keymap.set("n", "<leader>b5", "<CMD>BufferGoto 5<CR>", {desc = "Go To Buffer 5"} )
vim.keymap.set("n", "<leader>bn", "<CMD>BufferNext<CR>", {desc = "Go To Next Buffer"} )
vim.keymap.set("n", "<leader>bp", "<CMD>BufferPrevious<CR>", {desc = "Go To Previous Buffer"} )
vim.keymap.set("n", "<leader>bc", "<CMD>BufferClose<CR>", {desc = "Close Buffer"} )
vim.keymap.set("n", "<leader>b.", "<CMD>BufferMoveNext<CR>", {desc = "Move Buffer to Next Position"} )
vim.keymap.set("n", "<leader>b,", "<CMD>BufferMovePrevious<CR>", {desc = "Move Buffer to Previous Position"} )
vim.keymap.set("n", "<leader>lb", "<CMD>Telescope buffers<CR>", {})

--- Nerdy (Nerd-Font Icon Finder): ---
vim.keymap.set("n", "<leader>fi", "<CMD>Telescope nerdy<CR>", {desc = "Find Nerd Font Icon"} )
