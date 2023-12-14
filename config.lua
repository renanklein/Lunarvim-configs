-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.plugins = {
  "mfussenegger/nvim-jdtls",
  "folke/lua-dev.nvim",
  "mfussenegger/nvim-dap",
  "leoluz/nvim-dap-go"
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "jdtls" })

lvim.builtin.treesitter.ensure_installed = {
  "java",
  "go"
}

-- -- general
-- lvim.format_on_save = true
-- lvim.colorscheme = "darkplus"

-- vim.opt.wrap = false

-- -- keymappings
-- lvim.leader = "space"
-- vim.cmd [[
-- nnoremap Y y$

-- " paste on cursor
-- "nnoremap gP i<CR><Esc>PkJxJx

-- "nnoremap gp a<CR><Esc>PkJxJx

-- " delete without yanking
-- "nnoremap <leader>d "_d
-- "vnoremap <leader>d "_d

-- " replace currently selected text with default register
-- " without yanking it
-- vnoremap p "_dP
-- ]]

-- -- LSP
-- lvim.lsp.diagnostics.virtual_text = false
-- lvim.lsp.override = { "java" }
-- require("user.json_schemas").setup()

-- -- Builtins
-- lvim.builtin.dashboard.active = true
-- lvim.builtin.terminal.active = true

-- -- Whichkey
-- lvim.builtin.which_key.mappings.l.d = { "<cmd>TroubleToggle<cr>", "Diagnostics" }
-- lvim.builtin.which_key.mappings.l.R = { "<cmd>TroubleToggle lsp_references<cr>", "References" }
-- lvim.builtin.which_key.mappings.l.o = { "<cmd>SymbolsOutline<cr>", "Outline" }
-- lvim.builtin.which_key.mappings["z"] = { "<cmd>ZenMode<cr>", "Zen" }
-- lvim.builtin.which_key.mappings["r"] = {
--   name = "Replace",
--   r = { "<cmd>lua require('spectre').open()<cr>", "Replace" },
--   w = { "<cmd>lua require('spectre').open_visual({select_word=true})<cr>", "Replace Word" },
--   f = { "<cmd>lua require('spectre').open_file_search()<cr>", "Replace Buffer" },
-- }
-- lvim.builtin.which_key.mappings.f = { "<cmd>lua require('lir.float').toggle()<cr>", "Files" }

-- lvim.builtin.nvimtree.auto_open = 0
-- -- vim.g.nvim_tree_disable_netrw = 0
-- -- vim.g.nvim_tree_hijack_netrw = 0

-- -- Treesitter
-- lvim.builtin.treesitter.ensure_installed = "maintained"
-- lvim.builtin.treesitter.autotag.enable = true
-- lvim.builtin.treesitter.playground.enable = true

-- -- Additional Plugins
-- lvim.plugins = {
--   { "lunarvim/colorschemes" },
--   { "mfussenegger/nvim-jdtls" },
--   {
--     "ray-x/lsp_signature.nvim",
--     event = "InsertEnter",
--     config = function()
--       require("user.lsp_signature").config()
--     end,
--   },
--   {
--     "unblevable/quick-scope",
--     config = function()
--       require "user.quickscope"
--     end,
--   },
--   {
--     "kevinhwang91/rnvimr",
--     config = function()
--       require "user.rnvimr"
--     end,
--   },

--   {
--     "ruifm/gitlinker.nvim",
--     event = "BufRead",
--     config = function()
--       require("user.gitlinker").config()
--     end,
--   },
--   {
--     "phaazon/hop.nvim",
--     event = "BufRead",
--     config = function()
--       require("user.hop").config()
--     end,
--   },
--   {
--     "mattn/vim-gist",
--     event = "BufRead",
--     requires = "mattn/webapi-vim",
--   },
--   {
--     "tamago324/lir.nvim",
--     config = function()
--       require "user.lir"
--     end,
--   },
--   -- {
--   --   "andymass/vim-matchup",
--   --   event = "CursorMoved",
--   --   config = function()
--   --     require "user.matchup"
--   --   end,
--   -- },
--   {
--     "nacro90/numb.nvim",
--     event = "BufRead",
--     config = function()
--       require("user.numb").config()
--     end,
--   },
--   {
--     "monaqa/dial.nvim",
--     event = "BufRead",
--     config = function()
--       require("user.dial").config()
--     end,
--   },
--   {
--     "norcalli/nvim-colorizer.lua",
--     config = function()
--       require("user.colorizer").config()
--     end,
--   },
--   {
--     "nvim-telescope/telescope-project.nvim",
--     event = "BufWinEnter",
--     setup = function()
--       vim.cmd [[packadd telescope.nvim]]
--     end,
--   },
--   {
--     "windwp/nvim-spectre",
--     event = "BufRead",
--     config = function()
--       require("user.spectre").config()
--     end,
--   },
--   {
--     "folke/zen-mode.nvim",
--     config = function()
--       require("user.zen").config()
--     end,
--   },
--   -- {
--   --   "folke/twilight.nvim",
--   --   config = function()
--   --     require("user.twilight").config()
--   --   end,
--   --   -- cmd = "ZenMode",
--   -- },
--   {
--     "simrat39/symbols-outline.nvim",
--     cmd = "SymbolsOutline",
--   },
--   {
--     "folke/trouble.nvim",
--     cmd = "TroubleToggle",
--   },
--   {
--     "kevinhwang91/nvim-bqf",
--     event = "BufRead",
--   },
--   {
--     "iamcco/markdown-preview.nvim",
--     run = "cd app && npm install",
--     ft = "markdown",
--   },
--   {
--     "nvim-treesitter/playground",
--     event = "BufRead",
--   },
--   {
--     "windwp/nvim-ts-autotag",
--     event = "InsertEnter",
--   },
--   {
--     "sindrets/diffview.nvim",
--     event = "BufRead",
--   },
-- }
