# Starter prompt

Use this once, in the first chat of a new Claude Project. Before you paste it, add the files in this repository's `skills/chronicle/templates/` folder and `skills/chronicle/running-list/index.html` to the Project's files, or attach them to the chat. Some surfaces drop folder names on upload. Claude matches the files by name.

```text
I want to run this Project with the Chronicle pattern for thread governance.
The templates are in this Project's files (templates/) and the list page is
running-list/index.html. Work through the steps below with me, one at a time.
Wait for my answers before moving on.

1. Interview me. Ask your questions numbered, in one batch, each answerable in
   a word or a line:
   - which areas of my work and life should have their own thread (three to
     seven), and for each, its charter in one or two sentences and what it
     must never touch;
   - my standing orders: how I want to be spoken to and what you must never do;
   - subjects that are private or closed, and people who must never be named;
   - whether I already have a house style for prose you draft for me.

2. Draft the project instructions from templates/project-instructions.md.
   Keep them under 1,500 words. Put nothing in them that changes from week to
   week. Show me the draft and wait for my changes. I will paste the final
   version into the Project's instructions myself.

3. Set up master/: House_Style.md (from templates/house-style.md, with my
   rules if I gave any), Record.md and People.md (from the canon templates,
   empty except for what I have told you), and Master_Log.md (from
   templates/thread-log.md).

4. For each thread, create a folder holding Thread_Context.md, Thread_Log.md
   (one entry recording its creation) and Record_Extract_[today].md, from the
   templates. Fill them only with what I have told you. Mark anything you
   could not fill as a question for me in section 11 of the context.

5. If you can publish artifacts with a database, publish one running list per
   thread from running-list/index.html. Before each publish, set CONFIG at the
   top of the script: the title, a two-letter prefix and the thread's
   workstreams. Declare the capabilities db and user (with the profile scope).
   Publish one more copy as the master list, with one workstream per thread.
   Give me each link. Record each thread's link in its context, section 6,
   and the master list's link in master/Master_Log.md. If you cannot publish,
   say so and skip this step.

6. Write the opening message I will paste into each thread's first chat.

Rules while you do this. Never invent a fact about me: ask. Write in plain
sentences, one idea each. If you can write to this Project's files, write
them there. If you cannot, give me each file to download and add, and tell me
the path it belongs at.
```
