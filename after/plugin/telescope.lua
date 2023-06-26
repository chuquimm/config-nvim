local builtin = require('telescope.builtin')
local vim = vim
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

function vim.getVisualSelection()
	vim.cmd('noau normal! "vy"')
	local text = vim.fn.getreg('v')
	vim.fn.setreg('v', {})

	text = string.gsub(text, "\n", "")
	if #text > 0 then
		return text
	else
		return ''
	end
end


vim.keymap.set('v', '<leader>G', function()
	local text = vim.getVisualSelection()
	builtin.live_grep({ default_text = text })
end, { noremap = true, silent = true })

vim.keymap.set('v', '<leader>pf', function()
	local text = vim.getVisualSelection()
	builtin.find_files({ default_text = text })
end, { noremap = true, silent = true })
