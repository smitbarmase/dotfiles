
set -gx BUN_INSTALL "$HOME/.bun"

set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH
set -gx PATH $HOME/.bun/bin $PATH
set -gx PATH $HOME/.claude/local $PATH
set -gx PATH $HOME/.docker/bin $PATH

set -gx PATH /usr/local/go/bin $PATH
set -gx PATH $HOME/development/flutter/bin $PATH

if test (uname) = Darwin
    set -gx BINDGEN_EXTRA_CLANG_ARGS --sysroot (xcrun --show-sdk-path)
    
    set -gx PATH /opt/homebrew/sbin $PATH
    set -gx PATH /opt/homebrew/bin $PATH
    set -gx PATH /opt/homebrew/opt/ruby/bin $PATH
    set -gx PATH /opt/homebrew/opt/postgresql@15/bin $PATH
    
    set -gx PATH "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
    
    alias zed-nightly "/Applications/\"Zed Nightly.app\"/Contents/MacOS/zed"
    
    eval "$(/opt/homebrew/bin/brew shellenv)"

    zoxide init fish | source
end

