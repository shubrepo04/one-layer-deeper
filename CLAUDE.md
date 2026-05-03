# CLAUDE.md

This is the `one-layer-deeper` skill repository.

## Repo Structure

```
skills/               # Skill definition files
  one-layer-deeper.md # The main skill prompt
hooks/                # Claude Code hooks
scripts/              # Install and utility scripts
docs/                 # Extended documentation
assets/               # Images and static assets
.github/              # GitHub Actions and templates
```

## Working on Skills

Skill files live in `skills/`. Each skill is a single Markdown file with a YAML frontmatter block containing `name` and `description`, followed by the skill instructions.

The `description` field is used by Claude to decide when to trigger the skill — make it precise and include trigger phrases.

## Testing a Skill

To test locally, copy the skill file into a project's `.claude/skills/` directory and invoke Claude Code in that project.

## Conventions

- Keep skill files self-contained — no external dependencies
- The `description` frontmatter should be exhaustive about trigger phrases
- Include anti-patterns explicitly so Claude knows what NOT to do
- Always include a calibration section (too shallow / target / too deep)
