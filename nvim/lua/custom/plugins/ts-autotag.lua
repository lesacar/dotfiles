return {
  "windwp/nvim-ts-autotag",
  event = "VeryLazy", -- or "InsertEnter" if you prefer
  config = function()
    require("nvim-ts-autotag").setup({
      enable_close = true,
      enable_rename = true,
      enable_close_on_slash = false,
      per_filetype = {
        ["html"] = {
          enable_close = false,
        },
      },
    })
  end,
}
