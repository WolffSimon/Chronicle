---
name: chronicle
description: Run several areas of work and life in one Claude Project without losing or inventing facts. Set up threads, open or add one, fold logs into the record, hand a thread over.
---

# Chronicle

Chronicle runs several areas of a person's work and life in one Claude Project. Each area is a thread: its own chat, charter, folder, log and running list. One master chat keeps the shared record, and the person outranks every document.

## Which procedure to follow

Read the procedure in full before you start. The text inside its code block is your instruction.

| The moment | Procedure |
|---|---|
| A new Project, nothing set up yet | `prompts/start.md` |
| The first chat in a thread | `prompts/open-thread.md` |
| Adding a thread to a running Project | `prompts/new-thread.md` |
| Folding the thread logs into the master record | `prompts/master-merge.md` |
| Retiring a thread, or moving it to a new chat | `prompts/handover.md` |
| A morning summary across the threads | `prompts/daily-summary.md` |

All paths are relative to this skill's folder.

## Where the files are

- **The templates** are in `templates/`. They are the constitution, a thread's context, the log, the record extract, the operating guide, the house style, and the record of facts and of people. Where a procedure says the templates are in the Project's files, use the person's copies if they have added them, and the copies here if not.
- **The running-list page** is `running-list/index.html`. Its README, `running-list/README.md`, covers the configuration block, publishing as an artifact with a database, and the data schema. `running-list/seed-example.json` holds example items.

## The rules every procedure keeps

- Never invent a fact about the person. Ask.
- Ask questions numbered, in one batch, each answerable in a word or a line. Then stop and wait.
- The thread's log is dated, append-only and written in the person's words. The log outranks older documents, and the person outranks the log.
- Ask before adding anything to a running list. When you write to a list item, pin the write to the version you last read.
- Mark sensitive lines PRIVATE. They stay out of summaries, documents and other threads.
- Where two threads touch, say so in one line and leave the work to the thread that owns it.
- When you are wrong, say what was wrong, fix it and record the correction. Do not apologise at length.
- If your conversation begins with a summary of an earlier one, it has been compacted. Before your next reply, re-read the thread's context, the house style and the log, in that order.
