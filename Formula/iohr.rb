# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.21; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.21/iohr-0.1.0-alpha.21-aarch64-apple-darwin.tar.gz"
      sha256 "537ea7096733a691019eaa1a4f8602f6d1de8228d5de0b8082062b28409a9f3d"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.21/iohr-0.1.0-alpha.21-x86_64-apple-darwin.tar.gz"
      sha256 "288e75ddfa3474ac159527e1239c52818ae0c4f038c7e98d7ab0fae9573f5eaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.21/iohr-0.1.0-alpha.21-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aa0022ed18fe2d1b35d950d9f11353b7bb3a45fe9f9ddc00e3f5f25284e48680"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.21/iohr-0.1.0-alpha.21-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9815f0aba1a37c1a57e8d74326c30bcb4f64c5dc9a02fb9e7a1b9ebd2a99fa7a"
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
