# The daily summary

Use this as the prompt of a scheduled task that runs each weekday morning, if your Claude surface supports scheduled tasks. It starts in a fresh session, so it must stand alone.

```text
Read every Thread_Log.md in this project. Read the running list linked in
section 6 of each Thread_Context.md, and the master list linked in
master/Master_Log.md. Write me a short morning summary:

- what each thread recorded since yesterday morning, one or two lines each;
- items overdue or due in the next seven days, across all lists, by date;
- open questions any thread is waiting on me for.

Leave out every log line marked PRIVATE. Do not add advice. Do not repeat
anything that has not changed since yesterday's summary. Write in plain
sentences.
```
