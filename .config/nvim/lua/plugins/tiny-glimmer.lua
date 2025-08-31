return {
  "rachartier/tiny-glimmer.nvim",
  event = "VeryLazy",
  priority = 10, -- Needs to be a really low priority, to catch others plugins keybindings.
  config = function()
    require("tiny-glimmer").setup({
      overwrite = {
        search = {
          enabled = true,
        },
        undo = {
          enabled = true,
        },
        redo = {
          enabled = true,
        },
      },
    })
  end,
}
