return
{
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
                model = "gpt-4o-mini",
                temperature = 0.2,
                keymaps = {
                    complete_code = "<C-,>"
                }
            })
      -- Set up keybindings for normal and visual modes
      vim.keymap.set({"n", "v"}, "<C-,>", ":ChatGPTRun complete_code<CR>", { silent = true })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim", -- optional
      "nvim-telescope/telescope.nvim"
    }
}

