# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.35; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.35/iohr-0.1.0-alpha.35-aarch64-apple-darwin.tar.gz"
      sha256 "deb48e38cfd98bacd3ab15e290dfd16e4ada5eb573f5850656783a582200de11"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.35/iohr-0.1.0-alpha.35-x86_64-apple-darwin.tar.gz"
      sha256 "40e5f983361bd839798d21e44f5546bfa208d8a960d2b13624d44cb423e1c145"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.35/iohr-0.1.0-alpha.35-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bca9bd85c967ce0c9c0cebfcefafbf3c3baac944be33bb0cfcb406bbe353dd92"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.35/iohr-0.1.0-alpha.35-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebb1eaa9eb9b5e6b9bd9da27a6d3b8b92294786f5d646eeed024cfa1bd62c6cf"
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
