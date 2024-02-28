-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Switch splits
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Switch to right split' })
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Switch to left split' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Switch to upper split' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Switch to lower split' })

-- Switch buffers
vim.keymap.set('n', '<S-l>', '<CMD>bnext<CR>', { desc = 'Switch to the next buffer' })
vim.keymap.set('n', '<S-h>', '<CMD>bprev<CR>', { desc = 'Switch to the previous buffer' })

-- Page Up/Down centering
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "PageUp with window centering" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "PageDown with window centering" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Search backward with window centering" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Search forward with window centering" })

-- Open Explorer
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, { desc = "Open Explorer" })

-- Clear search highlighting
vim.keymap.set("n", "<leader>nhl", vim.cmd.nohlsearch, { desc = "Clear search highlighting" })

-- Copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Clear search highlighting
vim.keymap.set("n", "<leader>bd", vim.cmd.bdelete, { desc = "Delete current buffer (bdelete)" })

-- Telescope options
-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
-- vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
