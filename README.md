### Minimal required version of nvim is v0.10.1


### Wizard single-file edits

[nvim-wizard](https://github.com/xzxn099/nvim-wizard) is installed from GitHub.
The `nvim-wizard.json` in this Neovim config supplies the global fallback:
Qwen 2.5 Coder 0.5B, Qwen 2.5 Coder 3B, Qwen 3.5 4B, then GPT OSS 20B,
using `http://ollama.workstation.local` with a 16384-token context and temperature 0.
Edit `~/.config/nvim/nvim-wizard.json` to change these defaults.

An optional `nvim-wizard.json` in a project overrides that fallback. Its `presets`
replace the global model list; omit `presets` to retain it. Its `defaults` merge
over global `defaults`, so a project can change only selected fields. The nearest
project JSON wins, starting from the current file's directory. See the plugin
README for Ollama and OpenAI-compatible HTTP examples. No Codex CLI is required.

- Enter in a normal writable file opens the prompt; Enter submits it.
- In the diff review, normal-mode Enter accepts/saves and Esc discards.
- Shift+Enter opens the model selector; number keys select immediately.
- Space w m is the model-selector fallback if the terminal cannot distinguish
  Shift+Enter. Space w p opens the prompt or refines a proposal.
- While editing the proposal in insert mode, Esc leaves insert mode first.

The plugin is pinned in `lazy-lock.json`; use Lazy to update it when desired.
