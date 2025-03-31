-- Helper stuff for AgnosticD and AgnoticV

local agd_repo_dir = '~/Development/agnosticd'
local agv_repo_dir = '~/Development/agnosticv'

-- grep for selected text in agv and agd
vim.keymap.set('n', '<leader>fad', string.format('<cmd>Telescope grep_string search_dirs=%s <cr>', agd_repo_dir), opts)
vim.keymap.set('n', '<leader>fav', string.format('<cmd>Telescope grep_string search_dirs=%s <cr>', agv_repo_dir), opts)
--
-- live grep in agv and agd
vim.keymap.set('n', '<leader>ffad', string.format('<cmd>Telescope live_grep search_dirs=%s <cr>', agd_repo_dir), opts)
vim.keymap.set('n', '<leader>ffav', string.format('<cmd>Telescope live_grep search_dirs=%s <cr>', agv_repo_dir), opts)

-- fuzzy find files in agv and agd
vim.keymap.set('n', '<leader>ad', string.format('<cmd>Telescope find_files cwd=%s <cr>', agd_repo_dir), opts)
vim.keymap.set('n', '<leader>av', string.format('<cmd>Telescope find_files cwd=%s <cr>', agv_repo_dir), opts)
