# Refreshing a thread after compaction

When a long chat fills its context, Claude compacts it: the earlier conversation is replaced by a summary. Summaries lose detail, and the handling rules are often the first thing to go. These are two ways to make a thread re-read its documents after compaction, and only then.

## In any Claude surface: one line in the project instructions

The project instructions stay in context after compaction, so a rule there survives. The compacted chat can see that it starts from a summary. Add this to the rules for every thread:

```text
- If your conversation begins with a summary of an earlier conversation, it
  has been compacted. Before your next reply, re-read your thread's context,
  the house style and your log, in that order.
```

The templates include it.

## In Claude Code: a SessionStart hook

Claude Code fires a `SessionStart` hook with `source` set to `compact` straight after compaction. Whatever the hook prints is added to the context. `post-compact.sh` prints a brief at that moment and stays silent at startup, resume and clear.

1. Copy `post-compact-brief.md` somewhere stable, such as `~/.thread/post_compact_brief.md`, and fill it in for the thread. Keep it short. Put in the reading order and the handling rules that must not be lost.
2. Copy `post-compact.sh` alongside it and make it executable.
3. Add the hook to `~/.claude/settings.json`, or to the project's `.claude/settings.json`:

```json
{
  "hooks": {
    "SessionStart": [
      {
        "matcher": "compact",
        "hooks": [
          { "type": "command", "command": "~/.thread/post-compact.sh ~/.thread/post_compact_brief.md" }
        ]
      }
    ]
  }
}
```

Test it without waiting for a compaction:

```bash
echo '{"source":"compact"}' | ~/.thread/post-compact.sh ~/.thread/post_compact_brief.md
echo '{"source":"startup"}' | ~/.thread/post-compact.sh ~/.thread/post_compact_brief.md   # prints nothing
```

Claude Code reads hook settings when a session starts, so a hook added mid-session may only apply from the next session.

The brief is a second copy of rules that live in the thread's documents. Keep it to the reading order and the few rules that must never lapse, so it has little to drift from.
