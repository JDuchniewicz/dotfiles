# Update the FISH path by prepending, other options are weird
# Google Cloud Stuff
# The next line updates PATH for the Google Cloud SDK. - sources their script
if [ -f '/home/jduchniewicz/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/home/jduchniewicz/Downloads/google-cloud-sdk/path.fish.inc'; end

# Rust Stuff
# Add Rust Cargo binaries by hand
set cargo_bin_path "/home/jduchniewicz/.cargo/bin/"
if not contains "$cargo_bin_path" $PATH
    set -gx PATH "$cargo_bin_path" $PATH
end
# Set up Rust-racer env variable
set rustup_rust_src "/home/jduchniewicz/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src"
set -gx RUST_SRC_PATH "$rustup_rust_src"
