# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.36; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.36/iohr-0.1.0-alpha.36-aarch64-apple-darwin.tar.gz"
      sha256 "28c2e2dab2a7236905a1afaecb8498c22dc4e6bde0d0c32cfbc9fa57fd3befea"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.36/iohr-0.1.0-alpha.36-x86_64-apple-darwin.tar.gz"
      sha256 "d81396d28953b78c0ac63fc9fad8af7cef4c8d9677a71b0d0374d617ac7e5533"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.36/iohr-0.1.0-alpha.36-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c04a9f77795c58e36f1c81eccf5c1faf496376c997ec2e88b5421e87c847b6aa"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.36/iohr-0.1.0-alpha.36-x86_64-unknown-linux-musl.tar.gz"
      sha256 "866eb96b771f5bde08c91c316d060fcfc0171d947dc1a14cbdec3182dcd94ef0"
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
