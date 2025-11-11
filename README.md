# Sandbox Obsidian Site

An Obsidian-inspired Hugo starter that ships with a Tailwind CSS pipeline and a three-column layout for navigation, content, and table of contents.

## Prerequisites

- [Hugo Extended](https://gohugo.io/installation/) — install the latest release (see below).
- [Node.js](https://nodejs.org/) 18 or newer with `npm`.

To install the most recent Hugo Extended binary on Linux you can run the helper script included in this repository:

```bash
sudo ./scripts/install-hugo.sh
hugo version
```

The script downloads the newest release from GitHub and places it at `/usr/local/bin/hugo`.

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

## 左サイドバーのメニュー標準設定

日本語サイトでも使いやすいナビゲーションを保つために、左サイドバーは Hugo の `main` メニューを基準として構成されています。標準的な設定フローは次のとおりです。

1. `config.toml` の `[menu]` セクションでトップレベル項目を定義します。例:
   ```toml
   [menu]
     [[menu.main]]
       name = "ドキュメント"
       identifier = "docs"
       url = "/docs/"
       weight = 10
   ```
2. 各ドキュメントページのフロントマターで `menu.main` を指定すると、サブメニューとして表示されます。例:
   ```yaml
   menu:
     main:
       parent: "docs"
       identifier: "docs-getting-started"
       weight: 10
   ```
3. メニューの並び順は `weight` で制御されます。値が小さいほど上部に表示され、階層は `parent` で紐づきます。

上記の設定を行うと、`layouts/partials/sidebar-menu.html` が自動的に階層構造を描画し、開閉式のグループとして左サイドバーに反映します。
