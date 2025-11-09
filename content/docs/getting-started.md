---
title: "Getting Started"
description: "Set up your environment and preview the Obsidian-inspired layout."
weight: 10
menu:
  main:
    identifier: "docs-getting-started"
    parent: "docs"
    weight: 10
---

## Prerequisites

Before you begin, make sure you have the following tools installed:

- [Hugo Extended](https://gohugo.io/installation/) for building the site.
- [Node.js](https://nodejs.org/) 18+ for compiling Tailwind CSS assets.
- A terminal with access to `npm` commands.

### Installation steps

1. Install the Node dependencies:
   ```bash
   npm install
   ```
2. Run Tailwind in watch mode to regenerate CSS as you edit styles:
   ```bash
   npm run dev
   ```
3. Start the Hugo development server in another terminal:
   ```bash
   hugo server
   ```

Both commands can run concurrently so changes to content or styles appear instantly.

### Next steps

Continue with the content architecture guide to learn how navigation and sections are wired together.
