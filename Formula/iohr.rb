# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.24; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.24/iohr-0.1.0-alpha.24-aarch64-apple-darwin.tar.gz"
      sha256 "18be3c82b7087fd07a7b074322f25b53446b8da419cde424f4b7dbd52cb7f17c"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.24/iohr-0.1.0-alpha.24-x86_64-apple-darwin.tar.gz"
      sha256 "91b83ec3082ef7c5df03436fcaa1267c47d3b1a298d4e1002b6984009c6a1a5a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.24/iohr-0.1.0-alpha.24-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cae61589c79456e0e02b5d7c3e56b45f158b2d7d0af59e1596d91c51a17b981b"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.24/iohr-0.1.0-alpha.24-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c26bd4a30155d00bc9321ff4f58f017541aec94bb3d3e92d6d482a10bd0f0291"
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
