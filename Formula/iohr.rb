# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.16; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.16/iohr-0.1.0-alpha.16-aarch64-apple-darwin.tar.gz"
      sha256 "cff5cb351f4e941e19d9c94699cfa6e0071fd8103ad0cbc32c54646af1dfec86"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.16/iohr-0.1.0-alpha.16-x86_64-apple-darwin.tar.gz"
      sha256 "84d7062e0a19329d1f67022efdd24d2eeed4c2f339fe5ada6cdb995fee0c509d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.16/iohr-0.1.0-alpha.16-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1597eb11b9ff6843d5550d2c980b3e8cedfcf02f3f31a0f9e627f1558ae5d2b5"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.16/iohr-0.1.0-alpha.16-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7007ffa9961f9614549863d5b3099d361a4e545a73e45b0a438fc41759154e80"
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
