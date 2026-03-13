AI Skills & Commands for Claude Code and Codex.

## Setup

Run the setup script to symlink skills and commands into `~/.claude/` and `~/.codex/`:

```sh
./setup/ai.sh
```

Or via mmdot:

```sh
mmdot run @personal
```

## Structure

- `.ai/skills/` — Shared AI skills (Claude Code + Codex)
- `.ai/commands/` — Shared slash commands
- `.claude/` — Claude Code agents and settings
- `.codex/` — Codex rules
- `secrets/` — Age-encrypted skill templates (decrypted via mmdot)
