# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.11; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.11/iohr-0.1.0-alpha.11-aarch64-apple-darwin.tar.gz"
      sha256 "0bdc24fe254fafbef03ed498a20d6d6c00cbc3a95ee07e0e7fe151c08b29fc4c"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.11/iohr-0.1.0-alpha.11-x86_64-apple-darwin.tar.gz"
      sha256 "24ab826b5cbcdc7c90cd16796a8a6f9dbd06c6e375e77560514a3a2aef7eacd4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.11/iohr-0.1.0-alpha.11-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bacefb029c7cf85f08c54048dcc46bfc5350fde91014c967f4d87b1fe595d4a8"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.11/iohr-0.1.0-alpha.11-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4f7917f8fb4c418a26f6c6621d1b3a7d752e17ab42e0e195b61a484de9047ce7"
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
