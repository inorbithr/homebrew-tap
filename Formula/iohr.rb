# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.4; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.4/iohr-0.1.0-alpha.4-aarch64-apple-darwin.tar.gz"
      sha256 "86bfe2ef00d18aeabaedcd617a8aa2b315ca07d2b4655639dedefb769a7775d5"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.4/iohr-0.1.0-alpha.4-x86_64-apple-darwin.tar.gz"
      sha256 "960807762244e2dfb448034ae3a58125fffa19ddda77ef592f82e689f6cc92e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.4/iohr-0.1.0-alpha.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed81295e292cc286b7624dcc309cc21a31270ab2a283caac57630198c9a6b084"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.4/iohr-0.1.0-alpha.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1198d80f16485458c77bfeb207d39ad9348ab95a1933715ce0b75572f92fe145"
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
