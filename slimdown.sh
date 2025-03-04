#!/usr/bin/env bash

wget https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/v/vim.rb -O Formula/vim-slim.rb

sed -i '' \
  -e 's/class Vim/class VimSlim/' \
  -e '/lua/d' \
  -e '/perl/d' \
  -e '/depends_on "ruby"/d' \
  -e '/--enable-rubyinterp/d' \
  -e 's/"--without-x",/"--without-x"/' \
  Formula/vim-slim.rb

# second pass of sed to clean up extraneous blank lines
sed -i '' \
  -e '/^$/N;/^\n$/s/^\n$//;P;D' \
  Formula/vim-slim.rb
