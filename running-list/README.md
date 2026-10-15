# The running list page

`index.html` is a single-file task list built to run as a Claude artifact with a database. Each thread gets its own copy. It has:

- a list view grouped by workstream, with subtasks folded under their parents and done items at the foot;
- a timeline view of dated items across this week or six weeks, with dependency arrows and conflicts in a warning colour;
- an owner filter, an add form and an inline editor for dates, subtasks and dependencies;
- a Summary button that writes a plain-text summary of the list to copy into an email;
- light and dark themes, and a layout that works at phone width.

The page and the chats share the same data. The person ticks items on the page. Chats read and write the same items through Claude's artifact database tool.

## Configure it

Open `index.html` and edit `CONFIG` near the top of the script:

```js
const CONFIG={
  title:"Running List",          // heading, and first line of the summary
  eyebrow:"One thread's list",   // small line above the heading
  prefix:"RL",                   // items show as RL-01, RL-02
  workstreams:[                  // groups, in display order
    {key:"work", label:"Work", light:"#2A6896", dark:"#7FB3DB"},
    ...
  ],
  team:[],                       // names offered in the owner box
  listUrl:"",                    // the page's own link, quoted in the summary
  storageKey:"running-list-filter"
};
```

Items whose `workstream` is not in the list fall into the last workstream.

## Publish it in Claude

Attach `index.html` to a chat in a surface that can publish artifacts with capabilities, and ask:

```text
Publish this file as an artifact. Declare the capabilities
{"db": {}, "user": {"scopes": ["profile"]}}. Then tell me the link.
```

The `db` capability gives the page its database. The `user` capability lets the page record who ticked an item and show their name.

After publishing, put the link in `CONFIG.listUrl` and republish, so the summary can quote it.

## Try it outside Claude

Open `index.html` in a browser. Outside Claude the page runs in demo mode. It starts with the eight example items, dated around today, and keeps any changes in that browser's local storage. Nothing leaves the browser.

## A note on the first line

The file begins with the document skeleton that Claude's artifact publisher uses, so the `<title>` and font links sit at the top of the body. Browsers and the publisher both handle this. Keep the first line as it is if you republish through Claude.

## Data

One collection, `tasks`, one document per item.

| Field | Type | Meaning |
|---|---|---|
| `ref` | number | The display number. `RL-07` has `ref` 7. |
| `title` | string | The item, imperative where it is a task. |
| `note` | string | Detail: names, dates, what unblocks what. |
| `owners` | string[] | Names. Empty means no owner yet. |
| `workstream` | string | A `CONFIG.workstreams` key. |
| `due` | string | `YYYY-MM-DD`, or empty. |
| `start` | string | `YYYY-MM-DD`, or empty. With `due`, the item draws as a bar on the timeline. |
| `parent` | string | The id of a parent item, or empty. One level of subtasks only. |
| `deps` | object[] | `{id, type}`, where type is `FS`, `SS`, `FF` or `SF`. A finish-to-start dependency on an open item marks this one blocked. |
| `status` | string | `open` or `done`. |
| `doneAt` | string or null | ISO time of the tick. |
| `doneBy` | string or null | The user id of whoever ticked it, when the page knows. |
| `source` | string | Where the item came from, such as "Master list item 14". |
| `order` | number | Sort order among items due the same day. The page gives a new item the highest `order` plus one. |
| `createdAt` | string | ISO time. |
| `createdBy` | string or null | User id, when known. |
| `updatedAt` | string | ISO time of the last edit made on the page. |

`seed-example.json` holds eight example items, the same ones the demo mode shows, with fixed example dates. To load them into a published list, attach the file and ask a chat to write each item to the `tasks` collection with the artifact database tool, using the item's `id` as the document id.

## How chats should write to it

These rules belong in each thread's context, section 6.

- List the collection before adding, to find the highest `ref`. The person and other chats add items too.
- Give items a stable id: the prefix in lower case and the number, such as `rl07`. Items added on the page get random ids.
- Pin every write to an existing item to the `version` from your last read. If the write fails, someone changed the item. Read it again and redo the write.
- Tick: update `status` to `done` and `doneAt` to the time. Reopen: `status` to `open`, `doneAt` to null.
- Scratch: delete the item.
- Use a batch for more than a couple of changes.

## One page for the master list too

The master list can be another copy of the same page, with one workstream per thread. Items copy from a thread's list to the master list, and only in that direction, and the master copy's note ends "Also on the [thread] list ([REF])."
