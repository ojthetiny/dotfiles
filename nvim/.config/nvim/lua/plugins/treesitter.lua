return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "c", "python", "rust", "javascript" },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
