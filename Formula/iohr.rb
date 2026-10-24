# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.23; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.23/iohr-0.1.0-alpha.23-aarch64-apple-darwin.tar.gz"
      sha256 "684b3ef037c7d294a0da694614706823d087d88af224e7e33560f229573fd1d8"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.23/iohr-0.1.0-alpha.23-x86_64-apple-darwin.tar.gz"
      sha256 "535745f2659e659fa2130a6507039ee7398984def0721a5f1ba63d573f83024d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.23/iohr-0.1.0-alpha.23-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4631efeccc8d6a6a3d25d24c5eef84b712897b29f88576b00cb229390809c7b7"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.23/iohr-0.1.0-alpha.23-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7a57eb9d943b7daaa2c1f6c968476a8745e0853c4f60d0c7f536ee611374f498"
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
