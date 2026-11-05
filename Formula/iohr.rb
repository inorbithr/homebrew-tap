# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.33; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.33/iohr-0.1.0-alpha.33-aarch64-apple-darwin.tar.gz"
      sha256 "6a4de72702d7a49ef35e0b38c83d5d5f5b9d5afe2e9163d3a0d19d5d716866bb"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.33/iohr-0.1.0-alpha.33-x86_64-apple-darwin.tar.gz"
      sha256 "df0d0248dd0ff27b8b6d834c107f512ce517c8fdeb522dd079471db682bca9b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.33/iohr-0.1.0-alpha.33-aarch64-unknown-linux-musl.tar.gz"
      sha256 "081ea93c15daa8ccbed7a7116efcbf717a74673bd4aa977d05358f5ca328db11"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.33/iohr-0.1.0-alpha.33-x86_64-unknown-linux-musl.tar.gz"
      sha256 "db40a31ae33bf36f2a75702eabd267e5bf66f6aec0a899088c79586c46eaf196"
    end
  end

  def install
    bin.install "iohr"
    bash_completion.install "completions/iohr.bash" => "iohr"
    zsh_completion.install "completions/_iohr"
    fish_completion.install "completions/iohr.fish"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/iohr --version")
  end
end
