# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.27; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.27/iohr-0.1.0-alpha.27-aarch64-apple-darwin.tar.gz"
      sha256 "ea27eef475fa4a606d6dcf76566b5569eb946c32a934bd1276482dbf5ca79436"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.27/iohr-0.1.0-alpha.27-x86_64-apple-darwin.tar.gz"
      sha256 "8ddb4b0d2ed2076d4f2f4708e9c213b7f68ff0717857529ab78141e8970b5ce9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.27/iohr-0.1.0-alpha.27-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42f4f22d5d1015f6db5fa6694d4f52abe3aa51454bef530826f05a75e29709fd"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.27/iohr-0.1.0-alpha.27-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f12719f006e52561bd81bcbd8533de0faa329a3718a6b31310c845b2421e06c6"
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
