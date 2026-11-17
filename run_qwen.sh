#!/usr/bin/env bash
# Social Eagle Week 1 Day 5 - Run Qwen 2.5 locally with Ollama.
# Usage: bash run_qwen.sh [model-tag]   (default qwen2.5:3b)
set -e
MODEL="${1:-qwen2.5:3b}"

echo "Ollama version:"; ollama --version
echo "Pulling $MODEL ..."; ollama pull "$MODEL"
echo "Installed models:"; ollama list

PROMPT="List exactly 5 Tamil month names in order, numbered."
echo; echo "Prompt: $PROMPT"; echo
echo "--- Run 1 ---"; time ollama run "$MODEL" "$PROMPT"
echo; echo "--- Run 2 (same prompt, compare) ---"; time ollama run "$MODEL" "$PROMPT"
echo; echo "Now verify: are there exactly 5 items, in the right month order?"
