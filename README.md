# Run Qwen 2.5 Locally with Ollama - Social Eagle Week 1 Day 5

No API key, no internet after the download, no cost per word: Ollama runs
Qwen 2.5 on my own machine, and the assignment is to give it a task with a
checkable answer and then actually check the answer.

## Steps

```bash
# 1. Install Ollama (macOS / Linux)
curl -fsSL https://ollama.com/install.sh | sh
ollama --version

# 2. Pull Qwen 2.5 - pick a size the machine can handle
ollama pull qwen2.5:3b        # 8GB RAM laptop-friendly; plain `qwen2.5` is 7b
ollama list                   # confirm it is there, with its size

# 3. Run my checkable prompt twice
bash run_qwen.sh              # or: ollama run qwen2.5:3b
```

## My task prompt (checkable on purpose)

> List exactly 5 Tamil month names in order, numbered.

Checkable because "exactly 5" and "in order" can be verified by hand:
the Tamil year starts with Chithirai, Vaikasi, Aani, Aadi, Aavani, ...

## Verification notes (filled after my run)

- Model size used: qwen2.5:3b
- Run 1 answer: (paste) - verified: 5 items? correct order? right/wrong
- Run 2 answer: same list or different wording?
- Rough response time: (from the `time` output)
- What I checked and what I found: (2-3 lines for the community post)

## What to submit

- Screenshot of the Ollama session with prompt and answer visible
- The prompt + 2-3 lines on how I verified the output
- Model size and rough response time, posted in the community
