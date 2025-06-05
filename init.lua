require("config.lazy")


-- Define signos personalizados para diagnósticos
vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "DiagnosticSignInfo" })

--KEYMAPS--

vim.g.mapleader= " "
--telescope
local builtin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff',builtin.find_files,{})
vim.keymap.set('n','<leader>fg',builtin.live_grep,{})
--lsp
vim.keymap.set('n','K',vim.lsp.buf.hover,{})
vim.keymap.set('n','gD',vim.lsp.buf.definition,{}) --go to Definition
vim.keymap.set('n','gd',vim.lsp.buf.declaration,{}) --go to Declaration
vim.keymap.set({'n','v'},'<leader>ca',vim.lsp.buf.code_action,{}) --code code_action
--diagnostics
vim.keymap.set('n', '<leader>r', vim.diagnostic.open_float, { desc = "Mostrar error completo" })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Ir al diagnóstico anterior" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Ir al siguiente diagnóstico" })
--neotree
vim.keymap.set('n','<leader>e',':Neotree filesystem toggle left<CR>',{})
--buffers
vim.keymap.set('n','<leader>bn',':bn<CR>',{})
vim.keymap.set('n','<leader>bb',':bprevious<CR>',{})
