# Agent Instructions
## Screenshot Testing Requirement
- Whenever you modify any visual layout or front-end behavior (files under `layouts/`, `assets/`, or any CSS/JS affecting rendering), you **must** capture manual verification screenshots using the `browser_container` tool.
- Capture at least two screenshots per change: one emulating a smartphone viewport (≤480px width) and another emulating a desktop viewport (≥1280px width).
- Reference each screenshot in your final message's Testing section with Markdown image syntax and include the artifact path returned by the tool.
- If it is not possible to obtain screenshots due to environment issues, document the attempt and its failure in the Testing section.
## Test Reporting
- List every command or manual verification step you execute in the final message's Testing section, following the repository's final message formatting rules.
## Build Expectation
- Before completing any task, install and build with the latest Hugo release. Run `sudo ./scripts/install-hugo.sh` followed by `hugo --minify`, and report these commands in the Testing section.
