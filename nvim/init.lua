-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~ Project: vim-config             ~
-- ~ Author: Thamognya Kodi          ~
-- ~ LICENSE: GPL-3.0                ~
-- ~ BEGIN                           ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
-- \\\\\\\\\\\\\\\\\\//////////////////
--
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~       Alias section begin       ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- -- got inspiration from https://oroques.dev/2020/01/07/neovim-05.html for this part
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~       Alias section end         ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
-- \\\\\\\\\\\\\\\\\\//////////////////
--
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~       Plug section begin        ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- have to add it here
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~        Plug section end         ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
-- \\\\\\\\\\\\\\\\\\//////////////////
--
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~         config begin            ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- basic (non packages) configurations
-- -- numbers and relative numbers on vim
opt.number = true -- numbers
opt.relativenumber = true -- relative numbers
-- -- highlight search in vim
opt.hlsearch = true -- highlight search
-- -- cases
-- -- -- case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true 
-- -- -- #
opt.ignorecase = true -- ignore case
opt.joinspaces = false -- no double spaces will join
-- -- tabs and case
opt.expandtab = true -- expand tab
opt.smartindent = true -- smart tab
opt.shiftround = true -- round indent
-- -- -- set tab spaces 4
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- -- list invisible charecters
opt.list = true
-- -- split
opt.splitbelow = true -- puts new window behind current window
opt.splitright = true -- puts new window to the right of current window
-- -- color
-- -- -- opt.termguicolors = true -- sets it to terminal colors
-- hidden true
opt.hidden = true -- background buffers true
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~         config end              ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
-- \\\\\\\\\\\\\\\\\\//////////////////
--
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~ websites used for config begin  ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- These are the website I used for inspiration when making my config
-- -- https://github.com/nanotee/nvim-lua-guide
-- -- https://oroques.dev/2020/01/07/neovim-05.html
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~   website used for config end   ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--
-- \\\\\\\\\\\\\\\\\\//////////////////
--
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- ~ Project: vim-config             ~
-- ~ Author: Thamognya Kodi          ~
-- ~ LICENSE: GPL-3.0                ~
-- ~ END                             ~
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
