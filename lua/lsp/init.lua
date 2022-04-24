

-- local opts = { noremap=true, silent=true }
-- vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>f', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)



require 'lsp.comp'

local ft = vim.fn.expand('%:e')

local possibles = { 'py', 'lua', 'vim', 'c', 'cpp' }
local state = false


for key, value in pairs(possibles) do
	-- local occur = false
	if value == ft then
		state = true
	end
end

if state then
	-- ft = ft .. 'lsp'
	local ft_extended = 'lsp.langs.' .. ft .. 'lsp'
	require(ft_extended)
end

-- if ft in ['py', 'lua', 'c'] then
-- blablabla
-- else
-- pass


-- print('ft =', ft)
-- ft = ft .. 'lsp'
-- print('filetype =', ft)

-- local ft_extended = 'lsp.settings.' .. ft
-- print('blub', ft2) --prints: lsp.pylsp

-- require(ft_extended)
