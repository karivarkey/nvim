local plugins = {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function ()
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "prettierd"
      }
    }
  },
  {
    "windwp/nvim-ts-autotag",
    ft={
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact"
    },
    config = function ()
      require("nvim-ts-autotag").setup()
      
    end
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function ()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx"
      }
      return opts
      
    end
  }

}

return plugins
