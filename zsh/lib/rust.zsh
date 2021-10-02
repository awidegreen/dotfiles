# rust-related:

#   set cargo home for racerd (ycm)
export CARGO_HOME="$HOME/.cargo"

# Put custom $PATH settings into ~/.zprofile or ~/.zshrc.local
export PATH="$HOME/.cargo/bin:$HOME/.bin/:$PATH"

# set rust-src path for racer
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"

