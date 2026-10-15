# [Thread name]: context and working notes

Version of [date and time]. Written by [who] at my request ("[my words, if any]"). This is the charter for the [thread name] thread in the project "[project name]". The project instructions still govern. This document adds what this thread needs.

[PRIVATE. If this folder holds private facts, say so here, and say that nothing in it goes into a document, a letter or another thread's folder without my say-so.]

## 1. Read first, in this order

1. This document.
2. `master/House_Style.md`, in full, before writing anything for me. It does not survive being summarised.
3. `Thread_Log.md`: the dated record of what I decide and do. Where the log and anything older disagree, the log wins.
4. `Record_Extract_[date].md`: what the project held about this area when the thread began, with a source for each item and the corrections to older documents.
5. [Any other document this thread depends on.]
6. The thread's running list, before touching it (section 6).

Where this folder and I disagree, I am right.

After compaction. If this conversation begins with a summary of an earlier conversation, re-read this document, the house style and the log before your next reply. Summaries lose the handling rules first.

## 2. Charter

[What this thread does, in plain sentences. What it covers. What it never covers.]

Joins with other threads. Say so in one line when one comes up, and leave the work to its owner.
- [Other thread]: [where they touch, and who owns what].

## 3. Where things stand, [date]

Check each date against the list before stating it.
- [Dated facts that matter now.]

## 4. The thread's main document

[If the thread keeps a main document (a plan, a record, a book), say where it lives, how entries are dated, and that the date at its head changes with each edit and the change is logged.]

## 5. Constraints, stated once

These are facts for sequencing. Never lecture me about them.
- [Constraint.]

## 6. The running list

- The list is the page "[list name]" at [link]. It is private to me. Its items live in the page's database, collection `tasks`, one document per item. I tick and edit on the page.
- Fields: `ref`, `title`, `note`, `owners`, `workstream`, `due`, `start`, `parent`, `deps`, `status`, `doneAt`, `doneBy`, `source`, `order`, `createdAt`, `createdBy`, `updatedAt`. The schema is in `running-list/README.md`.
- Workstreams: [key "Label"; key "Label"].
- Ids are `[prefix]01` upwards, with `ref` matching. Items I add on the page get random ids and the next free `ref`. List the collection to find the highest `ref` before adding.
- Read before you write. Pin every write to an existing item to the version you last read. If a pinned write fails, someone changed the item: read it again and redo the write.
- Tick: set `status` to `done` and `doneAt` to the time. Scratch: delete the item.
- The copy rule. Items on this list are copied to the master list, and only in that direction. Add here first, then copy to the master list, and end the master copy's note with "Also on the [thread] list ([REF])." Tick both copies the same day. [Or: this thread reports finished items to the master list and does not copy every item.]
- Ask me before adding anything I have not asked for. Items taken from charters, from other threads' notes or from inference go to me as a question first.
- Do not nag. When I roll items forward, roll them without comment.
- Not tracked: [things I have said never to put on a list].

## 7. Working with me

- [How I talk to the thread: short bursts, dictation, numbered answers.]
- "Scratch that" means delete it, with no trace. "Agreed" settles a proposal. Record the decision the same day with the date and my words.
- My statements outrank anything inferred, by you or by another thread.
- [How to answer me.]

## 8. Handling

- [Thread-specific handling rules.]
- Mark sensitive log lines "PRIVATE". The daily summary leaves out any line a log marks private.

## 9. People

- [Who matters to this thread, one line each, pointing to `master/People.md` for the full entry.]

## 10. The house style, as a reminder

Read `master/House_Style.md` in full before drafting. The rules that bite most often:
- [Three to six rules.]

## 11. Open questions for me

Put these to me in the first conversation, numbered.
1. [Question.]

## 12. What is in this folder

- `Thread_Context.md`: this document.
- `Thread_Log.md`: the dated log of what I decide and do.
- `Record_Extract_[date].md`: the sourced digest of the record when the thread began.

## 13. Keeping the record

- Record each new fact I give you the same day, with the date and my words, in `Thread_Log.md`, as a dated bullet ("- 15 Oct 2026, 09:10: ...").
- The master chat folds the log into the canonical documents.
- Refresh the record extract when the facts in it change.
- The daily summary reads every thread log each morning, so keep this one current.
