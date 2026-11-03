# vim-slim

A slimmer build of vim, without lua and ruby dependencies.

This formula tracks homebrew-core: https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/v/vim.rb

## Update Cadence

A [commit made on November 1, 2026 to the upstream vim.rb](https://github.com/Homebrew/homebrew-core/commit/5e3b1f1b0941f1666893a3317f815821af8d8016) changed release throttling to occur by day rather than patch numbers in multiples of 50. However, I intend to continue releasing updates to this streamlined formula at roughly a 50 patch cadence.

## Installation

```
$ brew tap stacybrock/vim-slim
$ brew install -s stacybrock/vim-slim/vim-slim
```
