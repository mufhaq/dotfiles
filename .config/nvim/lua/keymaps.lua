-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff',
    [[ <Cmd>lua require('telescope.builtin').find_files()<CR>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg',
    [[ <Cmd>lua require('telescope.builtin').live_grep()<CR>]],
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb',
    [[ <Cmd>lua require('telescope.builtin').buffers()<CR>]],
    { noremap = true, silent = true })
