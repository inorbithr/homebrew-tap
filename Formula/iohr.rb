# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.10; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.10/iohr-0.1.0-alpha.10-aarch64-apple-darwin.tar.gz"
      sha256 "3b8ce03b01279cd291e48c92fc3c5cef8a8d909ac739b58f79b56a07a8197e09"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.10/iohr-0.1.0-alpha.10-x86_64-apple-darwin.tar.gz"
      sha256 "141396e6c3da0d8500e804dd0e2136f25c7b7f49424044593d8e03ea469ae729"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.10/iohr-0.1.0-alpha.10-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c06c83ca967c2df0ff4ed5750977fdd1de0f29cd489ea4702b81f38e9258f9cb"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.10/iohr-0.1.0-alpha.10-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05d3a83713bca0a0a93ecf9cbe40bc23df1ef543151e07124bf53471fa29afe5"
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
