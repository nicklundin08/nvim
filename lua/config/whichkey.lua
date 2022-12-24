local M = {}

function M.setup()
  local whichkey = require "which-key"

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["Q"] = { "<cmd>q!<CR>", "Quit (force)" },
    ["q"] = { "<cmd>q<CR>", "Quit" },
		["s"] = { "<cmd>w<CR>", "Write"},

    w = {
      name = "Window",
      q = { "<cmd>wq<CR>", "Save and quit" },
			t = { "<cmd>NERDTreeFocus<cr>", "Tree"},
			T = { "<cmd>NERDTreeFind<cr>", "Find in tree"},
			w = { "<C-w>w>", "Next window"},
    },

    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
			l = { "<cmd>ls<cr>", "List"},
			n = { "<cmd>bnext<cr>", "Next"},
			p = { "<cmd>bprevious<cr>", "Previous"},
    },

    z = {
      name = "Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },

    f = {
      name = "Find",
      f = { "<cmd>Files<cr>", "Files" },
			-- b = { "<cmd>FzfLua buffers<cr>", "Buffers" },
      -- o = { "<cmd>FzfLua oldfiles<cr>", "Old files" },
      -- g = { "<cmd>FzfLua live_grep<cr>", "Live grep" },
      -- c = { "<cmd>FzfLua commands<cr>", "Commands" },
      -- e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
    },
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M

