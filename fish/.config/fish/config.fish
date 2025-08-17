
set -gx BINDGEN_EXTRA_CLANG_ARGS --sysroot (xcrun --show-sdk-path)
set -gx BUN_INSTALL "$HOME/.bun"

set -gx PATH /Users/smit/.local/bin $PATH

set -gx PATH /opt/homebrew/sbin $PATH
set -gx PATH /opt/homebrew/bin $PATH

set -gx PATH /opt/homebrew/opt/ruby/bin $PATH
set -gx PATH /opt/homebrew/opt/postgresql@15/bin $PATH

set -gx PATH /Users/smit/.cargo/bin $PATH
set -gx PATH /Users/smit/.bun/bin $PATH
set -gx PATH /Users/smit/.claude/local $PATH
set -gx PATH /Users/smit/.docker/bin $PATH

set -gx PATH /usr/local/go/bin $PATH
set -gx PATH /Users/smit/development/flutter/bin $PATH

set -gx PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH

alias zed-nightly "/Applications/\"Zed Nightly.app\"/Contents/MacOS/zed"

eval "$(/opt/homebrew/bin/brew shellenv)"
