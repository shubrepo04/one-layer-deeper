# Contributor Guidelines

## Before Opening a PR

- Keep skill changes focused — one conceptual change per PR
- If you're modifying the skill prompt, include a brief before/after example in your PR description showing how Claude's behavior changes
- New trigger phrases in `description` frontmatter should be tested against at least 3 real prompts

## Skill File Rules

- Frontmatter `description` must start with a plain-language summary, followed by trigger phrases
- All trigger phrases should be natural language a user would actually type
- Anti-patterns section is required — helps Claude avoid overcorrection
- Calibration examples (shallow / target / too deep) must be present

## What Makes a Good PR

Good:
- Adds a missing scenario with a concrete before/after example
- Tightens a trigger phrase that was too broad or too narrow
- Fixes a language pattern that sounds preachy or condescending

Not good:
- Vague "improvements" with no specific before/after
- Adding philosophical depth without a practical landing
- Removing the anti-patterns section

## Session Transcripts

For changes to the core skill prompt, include a session transcript showing the skill working as intended. This is the primary evidence that a change improves behavior.
