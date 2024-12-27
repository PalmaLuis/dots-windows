-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap
local vapi = vim.api
local opts = { noremap = true, silent = true }

-- increment / decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwor-
keymap.set("n", "d", "vb_d")

--select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

--split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
--MOVER A LA IZQUIERDA
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
--MOVER ALA DERECHA
keymap.set("n", "sl", "<C-w>l")

-- Rezise window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Moverse entre buffers
keymap.set("n", "bl", ":bnext<CR>", { desc = "Siguiente buffer" })
keymap.set("n", "bh", ":bprev<CR>", { desc = "Buffer anterior" })
keymap.set("n", "bw", ":bdelete<CR>", { desc = "Cerrar buffer" })
keymap.set("n", "bs", ":write<CR>", { desc = "Guardar cambios" })
-- Oil
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open paren directory" })

--Obsidian
keymap.set(
  "n",
  "<leader>oc",
  "<cmd>lua require('obsidian').util.toggle_checkbox()<CR>",
  { desc = "Obsidan check checkbox" }
)
keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<CR>", { desc = "Insert Obsidian Template" })
keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<CR>", { desc = "Open in Obsidian App" })
keymap.set("n", "<leader>ob", "<cmd>ObsidianBacklinks<CR>", { desc = "Show ObsidianBacklinks" })
keymap.set("n", "<leader>ol", "<cmd>ObsidianLinks<CR>", { desc = "Show ObsidianLinks" })
keymap.set("n", "<leader>on", "<cmd>ObsidianNew<CR>", { desc = "Create New Note" })
keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<CR>", { desc = "Search Obsidian" })
keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<CR>", { desc = "Quick Switch" })

-- Disable key mappings in insert mode
vapi.nvim_set_keymap("i", "<A-j>", "<Nop>", { noremap = true, silent = true })
vapi.nvim_set_keymap("i", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in normal mode
vapi.nvim_set_keymap("n", "<A-j>", "<Nop>", { noremap = true, silent = true })
vapi.nvim_set_keymap("n", "<A-k>", "<Nop>", { noremap = true, silent = true })

-- Disable key mappings in visual block mode
vapi.nvim_set_keymap("x", "<A-j>", "<Nop>", { noremap = true, silent = true })
vapi.nvim_set_keymap("x", "<A-k>", "<Nop>", { noremap = true, silent = true })
vapi.nvim_set_keymap("x", "J", "<Nop>", { noremap = true, silent = true })
vapi.nvim_set_keymap("x", "K", "<Nop>", { noremap = true, silent = true })

-- Redefine Ctrl+s to save with the custom function
vapi.nvim_set_keymap("n", "<C-s>", ":lua SaveFile()<CR>", { noremap = true, silent = true })

-- iniciar live server en el directorio actual
keymap.set("n", "<leader>ls", function()
  vim.fn.jobstart({ "live-server", "." }, { detach = true })
end, { desc = "Iniciar live server" })

-- abrir navegador live sercver
keymap.set("n", "<leader>lob", function()
  vim.fn.jobstart({ "start", "http://localhost:8080" }, { detach = true })
end, { desc = "Abrir navegador live server" })

--Diagnostic
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
