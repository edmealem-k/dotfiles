return {
  "folke/snacks.nvim",
  opts = {
    explorer = {
      replace_netrw = true,
    },
    picker = {
      sources = {
        explorer = {
          win = {
            list = {
              keys = {
                ["<LeftRelease>"] = "confirm",
              },
            },
          },
        },
      },
    },
  },
}
