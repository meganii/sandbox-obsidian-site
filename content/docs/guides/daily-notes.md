---
title: "Daily Notes Workflow"
description: "Create and manage rolling notes in an Obsidian-style layout."
weight: 10
menu:
  main:
    identifier: "docs-guides-daily"
    parent: "docs-guides"
    weight: 10
---

## Capture ideas quickly

Daily notes are perfect for jotting down quick ideas or tasks. This workflow shows how to structure a living document with headings that automatically appear in the table of contents.

### Step 1 — Create a note

Use the `hugo new` command to add a new Markdown file under `content/docs/guides/`.

```bash
hugo new docs/guides/my-note.md
```

### Step 2 — Add metadata

Include front matter to position the page in the sidebar and set the right title.

```yaml
---
title: "My Daily Log"
menu:
  main:
    parent: "docs-guides"
---
```

### Step 3 — Link related content

Reference other guides or documentation using relative links. Hugo automatically converts them and the sidebar keeps everything connected.

#### Tip: Surface highlights

Use callouts, checklists, or custom components to make critical information stand out in the central pane.
