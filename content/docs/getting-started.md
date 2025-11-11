---
title: "スタートガイド"
description: "ローカル環境をセットアップし、日本語向けレイアウトを確認しましょう。"
weight: 10
menu:
  main:
    identifier: "docs-getting-started"
    parent: "docs"
    weight: 10
---

## 必要なツール

作業を始める前に、以下のツールをインストールしておきましょう。

- サイトをビルドするための [Hugo Extended](https://gohugo.io/installation/)
- Tailwind CSS アセットをコンパイルするための [Node.js](https://nodejs.org/) 18 以上
- `npm` コマンドを実行できるターミナル

### セットアップ手順

1. 依存関係をインストールします。
   ```bash
   npm install
   ```
2. スタイルを自動生成する Tailwind のウォッチャーを起動します。
   ```bash
   npm run dev
   ```
3. 別のターミナルで Hugo の開発サーバーを起動します。
   ```bash
   hugo server
   ```

両方のコマンドを並行して実行することで、コンテンツやスタイルの変更を即座に反映できます。

### 次のステップ

左サイドバーのメニュー設定を調整しながら、実際のドキュメント構造を自分のワークフローに合わせてカスタマイズしてみてください。
