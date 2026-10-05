# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.9; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.9/iohr-0.1.0-alpha.9-aarch64-apple-darwin.tar.gz"
      sha256 "a4599bdeca0492aee788c60e544eb0875fa555df3fa1631f7432678edc97766f"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.9/iohr-0.1.0-alpha.9-x86_64-apple-darwin.tar.gz"
      sha256 "eb48d99a94d0fdeaf2e68dd2c9267a28918efac18308bf11d52290d07364a4d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.9/iohr-0.1.0-alpha.9-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a30e6abfee99340c0f377b91391939dc1cfc273e35f3fc39ee5b523a09eb0265"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.9/iohr-0.1.0-alpha.9-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f621077d512b1fa13ee2176ef01dd603b31dbf6d920090f344af94ceffc3ff2d"
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
