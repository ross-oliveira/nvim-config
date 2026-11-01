return {
  "xzxn099/nvim-wizard",
  main = "wizard",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "WizardPrompt", "WizardModels", "WizardAccept", "WizardCancel" },
  keys = {
    { "<leader>wp", "<cmd>WizardPrompt<cr>", desc = "Wizard: prompt / refine" },
    { "<leader>wm", "<cmd>WizardModels<cr>", desc = "Wizard: select model" },
  },
  opts = {
    -- Configure models per project in nvim-wizard.json.
    presets = {},
    timeout_ms = 180000,
  },
}
