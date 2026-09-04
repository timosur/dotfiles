return {
  {
    "ChmaraX/herdr-nvim",
    lazy = false, -- load at startup so the <leader>a* keymaps get registered
    opts = {
      prefix = "<leader>a",     -- keymap prefix
      keymaps = true,           -- set false to define your own
      clear_after_send = true,  -- comments are ephemeral by design
    },
  },
}
