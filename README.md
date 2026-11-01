### Minimal required version of nvim is v0.10.1


### Wizard single-file edits

[nvim-wizard](https://github.com/xzxn099/nvim-wizard) is installed from GitHub.
Add a `nvim-wizard.json` to your project to configure models and the API endpoint;
see the plugin README for Ollama and OpenAI-compatible HTTP examples. No Codex
CLI is required.

- Enter in a normal writable file opens the prompt; Enter submits it.
- In the diff review, normal-mode Enter accepts/saves and Esc discards.
- Shift+Enter opens the model selector; number keys select immediately.
- Space w m is the model-selector fallback if the terminal cannot distinguish
  Shift+Enter. Space w p opens the prompt or refines a proposal.
- While editing the proposal in insert mode, Esc leaves insert mode first.

The plugin is pinned in `lazy-lock.json`; use Lazy to update it when desired.
