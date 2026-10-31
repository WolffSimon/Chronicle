#!/bin/bash
# Claude Code SessionStart hook. When a session has just been compacted
# (source "compact"), it prints the thread's post-compaction brief, which
# Claude Code adds to the context. At startup, resume or clear it prints
# nothing.
#
# Pass the path of your brief as the first argument.
BRIEF="${1:-}"
input=$(cat)
src=$(printf '%s' "$input" | python3 -c 'import sys,json; print(json.load(sys.stdin).get("source",""))' 2>/dev/null)
if [ "$src" = "compact" ] && [ -n "$BRIEF" ] && [ -f "$BRIEF" ]; then
  cat "$BRIEF"
fi
exit 0
