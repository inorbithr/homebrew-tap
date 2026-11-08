# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.38; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.38/iohr-0.1.0-alpha.38-aarch64-apple-darwin.tar.gz"
      sha256 "52d75d8e245b23f59f3ea354fc93459723b07009f842acc4237509ddd8a889ce"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.38/iohr-0.1.0-alpha.38-x86_64-apple-darwin.tar.gz"
      sha256 "cefaf3faffef64130635853cf6beef70973f5b3a2a7628e9027d13a1bf227084"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.38/iohr-0.1.0-alpha.38-aarch64-unknown-linux-musl.tar.gz"
      sha256 "14b7d5b4ecac7ff4710869349770bce02fcfeabd38634b6cab77e1f27c622496"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.38/iohr-0.1.0-alpha.38-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94e228cd2f5424a02fa05ae5aeff9bc778533cc7ab0a07abd7a757ce9d28ca09"
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
