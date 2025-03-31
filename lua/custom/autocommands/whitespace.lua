-- Delete trailing whitespace on buffer write
--
vim.api.nvim_create_autocmd({ 'BufWritePre' }, {
  pattern = { '*' },
  callback = function()
    local save_cursor = vim.fn.getpos '.'
    pcall(function()
      vim.cmd [[%s/\s\+$//e]]
    end)
    vim.fn.setpos('.', save_cursor)
  end,
})

-- Delete final blank links
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    while #lines > 0 and lines[#lines] == '' do
      table.remove(lines)
    end
    vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
  end,
})
