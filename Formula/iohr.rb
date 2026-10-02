# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.2; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.2/iohr-0.1.0-alpha.2-aarch64-apple-darwin.tar.gz"
      sha256 "66754c144cba552b5deb8d35f702827aa0fabc093b1957d5400751f0bdf1f486"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.2/iohr-0.1.0-alpha.2-x86_64-apple-darwin.tar.gz"
      sha256 "38bc0185309a5ff568ed76e641ccf0604929a594c2d7ebc5f3f256d4c921278f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.2/iohr-0.1.0-alpha.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d201147d5dce63ff6692c7093d927151ac4b2c2bd233331d923270b8f5c13644"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.2/iohr-0.1.0-alpha.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83a3e587299a31f5d4c08f770e35b52e419afeedc9e254a7d256bbc169419ebd"
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
