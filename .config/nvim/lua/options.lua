vim.cmd [[ colo gruvbox ]]
vim.cmd [[ hi Normal guibg=none guifg=white ctermbg=none ctermfg=white ]]
vim.cmd [[ 
    syntax on
    filetype indent on
]]

vim.g['gruvbox_contrast_dark'] = 'hard'

vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.mouse = 'a'
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.incsearch = true
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.so = 5
vim.opt.termguicolors = true
vim.opt.completeopt = 'menu,menuone,noselect'
