---
title: "Knowledge Map"
description: "Organize related topics with nested sections and backlinks."
weight: 20
menu:
  main:
    identifier: "docs-guides-map"
    parent: "docs-guides"
    weight: 20
---

## Visualize relationships

A knowledge map helps you navigate complex topics by grouping related content. Use Hugo sections to mimic Obsidian's folder-like structure.

### Plan your hierarchy

Start by sketching the primary topics you want to surface. Create folders under `content/` that reflect those buckets.

### Wire up menus

Assign each section to the `main` menu using front matter. Nest guides under the appropriate parent identifiers to create collapsible groups in the sidebar.

### Iterate often

As your knowledge base grows, revisit weights, titles, and identifiers to keep navigation intuitive.
