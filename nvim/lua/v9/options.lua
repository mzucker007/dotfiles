vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- use tab to move between buffers
-- nmap <tab> :bn<cr>
-- nmap <s-tab> :bp<cr>
-- This works, but breaks nvim-tree
vim.api.nvim_set_keymap('n', '<Tab>', ':bn<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', ':bp<CR>', { noremap = true, silent = true })

-- set working directory to file in buffer
vim.cmd('cd %:p:h')

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true
vim.opt.hlsearch = true   -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8

-- enable clipboard
vim.opt.clipboard="unnamedplus" 

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true

-- folding
vim.cmd [[set foldmethod=expr]]
vim.cmd [[set foldexpr=nvim_treesitter#foldexpr()]]
vim.cmd [[set nofoldenable]] 
