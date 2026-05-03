# one-layer-deeper

> A Claude skill that moves past surface answers into the insight that actually matters.

---

## What It Does

Most AI responses answer the question asked. But the question asked is often not the question that matters.

**One Layer Deeper** teaches Claude to notice when it's about to give a shallow, obvious, or purely descriptive answer — and instead go to the layer where the response becomes genuinely useful.

It handles:
- Users solving the wrong problem
- Obvious answers that are probably wrong
- Questions with baked-in assumptions
- Symptoms presented as root causes
- Decisions with second-order effects worth naming

---

## Install

### Claude Code

```bash
claude skill install one-layer-deeper
```

Or manually: copy `skills/one-layer-deeper.md` into your project's `.claude/skills/` directory.

### Cursor

Add to `.cursor/rules/` or your global Cursor rules file.

### Other Agents

Copy `skills/one-layer-deeper.md` into your agent's skills/rules directory.

---

## Usage

Once installed, the skill activates automatically when Claude detects a question that has a richer layer underneath. You can also invoke it explicitly:

- *"Why is this really happening?"*
- *"What am I missing here?"*
- *"Help me think through this"*
- *"What's the root cause?"*
- *"What are the second-order effects?"*

Claude will acknowledge your question, offer the deeper frame, give the practical answer within that frame, and name what to watch for.

---

## How It Works

The skill trains Claude to run a quick internal check before every response:

> **"Is my answer describing, or explaining?"**

If describing → go one layer deeper.  
If explaining and the deeper layer would change what the person does → surface it.  
If the obvious answer is sufficient → give it cleanly.

See [`skills/one-layer-deeper.md`](skills/one-layer-deeper.md) for the full prompt.

---

## Examples

**Without the skill:**
> Q: My sales are down. Should I spend more on ads?  
> A: Here are some ad strategies to consider...

**With the skill:**
> Q: My sales are down. Should I spend more on ads?  
> A: The direct answer is: maybe. But here's what I'd flag first — spending more on ads to fix declining sales usually accelerates the reveal of an underlying product/market/retention problem. Before increasing ad spend, what's your churn rate looking like? What are customers saying when they leave? The ad spend question answers itself once you know the real diagnosis.

---

## When It Goes Deeper (Recognition Patterns)

| Signal | What It Means |
|---|---|
| User is fixing a symptom | The root cause hasn't been named |
| Proposed solution could backfire | The diagnosis might be wrong |
| Problem keeps recurring | Surface fixes have already been tried |
| Question has an unexamined assumption | The prior decision needs a second look |
| Decision affects more than the immediate situation | Second-order effects are worth naming |

---

## Calibration

The skill is designed to calibrate depth carefully:

- **Too shallow:** Describes what is, doesn't explain why
- **Target depth:** One layer past obvious — changes what the person would do
- **Too deep:** Philosophical tangents with no practical landing

The test: *"If this person acts on my answer, will they be better off — or will they just be busy?"*

---

## Contributing

See [AGENTS.md](AGENTS.md) for contributor guidelines.

---

## License

MIT — see [LICENSE](LICENSE)
