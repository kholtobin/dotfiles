-- Settings
vim.opt.number = true
vim.opt.termguicolors = true

--highlight search result
vim.opt.hlsearch = true
vim.opt.colorcolumn = '81,101,121'
vim.opt.cursorline = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--turn off breaking long lines
vim.opt.wrap = false

-- Disable swap file
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

-- Search
vim.opt.ic = true -- ignore case
vim.opt.incsearch = true -- interactive

-- Open new split panes to right and bottom, which feels more natural
vim.opt.splitbelow = true
vim.opt.splitright = true

require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'

  use 'fxn/vim-monochrome'
  use 'rakr/vim-one'
  use 'shaunsingh/nord.nvim'
  use '907th/vim-auto-save'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  -- use 'dbeniamine/cheat.sh-vim'
  use 'RishabhRD/popfix'
  use 'RishabhRD/nvim-cheat.sh'

  use 'tree-sitter/tree-sitter'
  use 'nvim-treesitter/nvim-treesitter'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
end)

require('lualine').setup()

require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
  ensure_installed = { "ruby" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  }
  -- indent = {
  --   enable = true
  -- }
}

require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },
    fzf_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}
require('telescope').load_extension('fzf')

vim.cmd [[
  colorscheme nord
  let g:nord_italic = 1
  let g:nord_italic_comments = 1
]]

-- vim-auto-save config
vim.cmd [[
  let g:auto_save = 1 " enable AutoSave on Vim startup
  let g:auto_save_events = ["InsertLeave", "TextChanged"]
]]

-- TODO: Look / Wait for native way
vim.cmd [[
  command! -range=% FormatJSON <line1>,<line2>!jq '.'
]]

vim.api.nvim_set_keymap('n', '<C-p>', ':GFiles<CR>', {})

-- Quicker window movement
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {})
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {})

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<Leader><Leader>', '<C-^>', {})
vim.api.nvim_set_keymap('n', '<leader>q', ':q<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>e', ':e<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>ag', ':Ag <C-R><C-W><CR>', {})
vim.api.nvim_set_keymap('n', '<leader>/', ':BLines<CR>', {})

vim.api.nvim_set_keymap('n', '<leader>p', ':Telescope git_files<CR>', {})

vim.api.nvim_set_keymap('n', 'n', 'nzz', {noremap = true})
vim.api.nvim_set_keymap('n', 'N', 'Nzz', {noremap = true})
vim.api.nvim_set_keymap('n', '*', '*zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-o>', '<C-o>zz', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-i>', '<C-i>zz', {noremap = true})
