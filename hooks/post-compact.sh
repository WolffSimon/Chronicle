#!/bin/bash
# Claude Code SessionStart hook. When a session has just been compacted
# (source "compact"), it prints the thread's post-compaction brief, which
# Claude Code adds to the context. At startup, resume or clear it prints
# nothing.
#
# Set BRIEF to the path of your brief, or pass it as the first argument.
BRIEF="${1:-$HOME/.thread/post_compact_brief.md}"
input=$(cat)
src=$(printf '%s' "$input" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("source",""))' 2>/dev/null)
if [ "$src" = "compact" ] && [ -f "$BRIEF" ]; then
  cat "$BRIEF"
fi
exit 0
