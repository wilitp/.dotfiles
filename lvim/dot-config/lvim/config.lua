-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.lsp.automatic_servers_installation = false

lvim.format_on_save.enabled = true



lvim.plugins = {
  { "ellisonleao/gruvbox.nvim" },
  { "windwp/nvim-ts-autotag" },
  { "catppuccin/nvim",           name = "catppuccin" },
  { "xiyaowong/transparent.nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  }
}

lvim.colorscheme = "gruvbox"

require 'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
  }
}
