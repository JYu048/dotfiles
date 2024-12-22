vim.cmd 'let g:netrw_liststyle = 3'

local opt = vim.opt
opt.number = true -- show line number

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new line

-- line wrapping
opt.wrap = false -- disable line wrapping

-- undo pipeline
vim.opt.undofile = true -- save undo history

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- enable case-sensitive search for mixed case

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- decrease update time
vim.opt.updatetime = 250

-- appearence
opt.termguicolors = true
opt.background = 'dark' -- always use dark mode
opt.signcolumn = 'yes' -- show sign column so text doesn't shift

-- backspace
opt.backspace = 'indent,eol,start' -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append 'unnamedplus' -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false

-- minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- highlight yanked line
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
