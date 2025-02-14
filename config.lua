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
vim.opt.relativenumber = true
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
lvim.leader = "space"
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

--- Rust config ... 
lvim.builtin.treesitter.ensure_installed = {
  "lua",
  "rust",
  "toml",
}

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "rust_analyzer" })

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "stylua", filetypes = { "lua" } },
}

local mason_path = vim.fn.glob(vim.fn.stdpath "data" .. "/mason/")

local codelldb_path = mason_path .. "bin/codelldb"
local liblldb_path = mason_path .. "packages/codelldb/extension/lldb/lib/liblldb"
local this_os = vim.loop.os_uname().sysname

-- The path in windows is different
if this_os:find "Windows" then
  codelldb_path = mason_path .. "packages\\codelldb\\extension\\adapter\\codelldb.exe"
  liblldb_path = mason_path .. "packages\\codelldb\\extension\\lldb\\bin\\liblldb.dll"
else
  -- The liblldb extension is .so for linux and .dylib for macOS
  liblldb_path = liblldb_path .. (this_os == "Linux" and ".so" or ".dylib")
end

pcall(function()
  require("rust-tools").setup {
    tools = {
      executor = require("rust-tools/executors").termopen, -- can be quickfix or termopen
      reload_workspace_from_cargo_toml = true,
      runnables = {
        use_telescope = true,
      },
      inlay_hints = {
        auto = true,
        only_current_line = false,
        show_parameter_hints = false,
        parameter_hints_prefix = "<-",
        other_hints_prefix = "=>",
        max_len_align = false,
        max_len_align_padding = 1,
        right_align = false,
        right_align_padding = 7,
        highlight = "Comment",
      },
      hover_actions = {
        border = "rounded",
      },
      on_initialized = function()
        vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter", "CursorHold", "InsertLeave" }, {
          pattern = { "*.rs" },
          callback = function()
            local _, _ = pcall(vim.lsp.codelens.refresh)
          end,
        })
      end,
    },
    dap = {
      -- adapter= codelldb_adapter,
      adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path),
    },
    server = {
      on_attach = function(client, bufnr)
        require("lvim.lsp").common_on_attach(client, bufnr)
        local rt = require "rust-tools"
        vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
      end,

      capabilities = require("lvim.lsp").common_capabilities(),
      settings = {
        ["rust-analyzer"] = {
          lens = {
            enable = true,
          },
          checkOnSave = {
            enable = true,
            command = "clippy",
          },
        },
      },
    },
  }
end)

lvim.builtin.dap.on_config_done = function(dap)
  dap.adapters.codelldb = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
  dap.configurations.rust = {
    {
      name = "Launch file",
      type = "codelldb",
      request = "launch",
      program = function()
        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
      end,
      cwd = "${workspaceFolder}",
      stopOnEntry = false,
    },
  }
end

vim.api.nvim_set_keymap("n", "<m-d>", "<cmd>RustOpenExternalDocs<Cr>", { noremap = true, silent = true })
lvim.keys.normal_mode["<leader>t"] = ":ToggleTerm direction=float<CR>"
lvim.keys.normal_mode["<leader>e"] = false
lvim.keys.normal_mode["-"] = ":Oil<CR>"

lvim.builtin.which_key.mappings["C"] = {
  name = "Rust",
  r = { "<cmd>RustRunnables<Cr>", "Runnables" },
  t = { "<cmd>lua _CARGO_TEST()<cr>", "Cargo Test" },
  m = { "<cmd>RustExpandMacro<Cr>", "Expand Macro" },
  c = { "<cmd>RustOpenCargo<Cr>", "Open Cargo" },
  p = { "<cmd>RustParentModule<Cr>", "Parent Module" },
  d = { "<cmd>RustDebuggables<Cr>", "Debuggables" },
  v = { "<cmd>RustViewCrateGraph<Cr>", "View Crate Graph" },
  R = {
    "<cmd>lua require('rust-tools/workspace_refresh')._reload_workspace_from_cargo_toml()<Cr>",
    "Reload Workspace",
  },
  o = { "<cmd>RustOpenExternalDocs<Cr>", "Open External Docs" },
  y = { "<cmd>lua require'crates'.open_repository()<cr>", "[crates] open repository" },
  P = { "<cmd>lua require'crates'.show_popup()<cr>", "[crates] show popup" },
  i = { "<cmd>lua require'crates'.show_crate_popup()<cr>", "[crates] show info" },
  f = { "<cmd>lua require'crates'.show_features_popup()<cr>", "[crates] show features" },
  D = { "<cmd>lua require'crates'.show_dependencies_popup()<cr>", "[crates] show dependencies" }, }

lvim.plugins = {
  "simrat39/rust-tools.nvim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
        popup = {
          border = "rounded",
        },
      }
    end,
  },
  {
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup()
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require("toggleterm").setup({})
      vim.keymap.set("n", "<leader>t", ":ToggleTerm direction=float<CR>", {})

    end
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    config = function ()
      require("oil").setup({})
    end,
    dependencies = {{"echasnovski/mini.icons", opts = {}}},
    lazy = false
  }
}
