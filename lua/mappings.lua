
vim.g.mapleader = ' '
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n','<leader>f','<cmd>Telescope find_files<Cr>',opts)

vim.api.nvim_set_keymap('n','<C-t>','<cmd>NERDTreeToggle<Cr>',opts)

vim.api.nvim_set_keymap('i','jj','<ESC>',opts)

vim.api.nvim_set_keymap('n','<C-a>','<cmd>call run_file#Run_File()<Cr>',opts)

vim.api.nvim_set_keymap('n','<C-s>','<cmd>call save#w()<Cr>',opts)

vim.api.nvim_set_keymap('n','<C-r>','<cmd>call number_set#relative_numb()<Cr>',opts)

vim.api.nvim_set_keymap('n','<C-e>','<cmd>call number_set#normal_numb()<Cr>',opts)

vim.api.nvim_set_keymap('n','<leader>ps','<cmd>PackerStatus<Cr>',opts)

vim.api.nvim_set_keymap('n','<leader>fg','<cmd>Telescope live_grep<Cr>',opts)

vim.api.nvim_set_keymap('n','<leader>bl','<cmd>IndentBlanklineToggle<Cr>',opts)

vim.api.nvim_set_keymap('v','<C-c>','"*y<Cr>',opts)
