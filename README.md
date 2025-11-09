# Sandbox Obsidian Site

An Obsidian-inspired Hugo starter that ships with a Tailwind CSS pipeline and a three-column layout for navigation, content, and table of contents.

## Prerequisites

- [Hugo Extended](https://gohugo.io/installation/) 0.120+.
- [Node.js](https://nodejs.org/) 18 or newer with `npm`.

## Installation

```bash
npm install
```

## Development

Run the Tailwind watcher in one terminal:

```bash
npm run dev
```

Start the Hugo development server in another terminal to preview the site:

```bash
hugo server
```

Visit the printed local address to explore the Obsidian-style navigation. Content lives under `content/` and layouts under `layouts/`.

## Production build

Generate a production stylesheet before building or deploying the site:

```bash
npm run build
hugo --minify
```

The generated CSS lives at `assets/css/main.css` and is processed with PostCSS during Hugo builds.
