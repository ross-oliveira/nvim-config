return {
  "ross-oliveira/nvim-wizard",
  main = "wizard",
  event = { "BufReadPost", "BufNewFile" },
  cmd = { "WizardPrompt", "WizardModels", "WizardAccept", "WizardCancel" },
  keys = {
    { "<leader>wp", "<cmd>WizardPrompt<cr>", desc = "Wizard: prompt / refine" },
    { "<leader>wm", "<cmd>WizardModels<cr>", desc = "Wizard: select model" },
  },
  opts = function()
    local path = vim.fn.stdpath("config") .. "/nvim-wizard.json"
    local defaults = vim.json.decode(table.concat(vim.fn.readfile(path), "\n"))
    return vim.tbl_extend("force", { timeout_ms = 180000 }, defaults)
  end,
}
