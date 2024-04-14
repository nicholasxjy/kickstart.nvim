return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", ":Neotree toggle<CR>", { desc = "Neotree toggle" } }
  },
  config = function()
    require('neo-tree').setup({
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      sort_case_insensitive = false,
      default_component_configs = {
        git_status = {
          added = "+",
          modified = "~",
          deleted = "_"
        },
        window = {
          position = "left",
          width = 40
        }
      }
    })
  end
}
