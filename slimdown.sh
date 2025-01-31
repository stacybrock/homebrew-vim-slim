#!/usr/bin/env bash

wget https://raw.githubusercontent.com/Homebrew/homebrew-core/master/Formula/v/vim.rb -O Formula/vim.rb

sed -i '' \
  -e '/lua/d' \
  -e '/perl/d' \
  -e '/depends_on "ruby"/d' \
  -e '/--enable-rubyinterp/d' \
  -e 's/"--without-x",/"--without-x"/' \
  Formula/vim.rb

# second pass of sed to clean up extraneous blank lines
sed -i '' \
  -e '/^$/N;/^\n$/s/^\n$//;P;D' \
  Formula/vim.rb
