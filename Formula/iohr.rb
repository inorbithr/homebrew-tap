# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.8; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.8/iohr-0.1.0-alpha.8-aarch64-apple-darwin.tar.gz"
      sha256 "10bd55f418c1f33cf1a9081f304c8c932c4064d9b484e69a13879b1a21aa1c1c"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.8/iohr-0.1.0-alpha.8-x86_64-apple-darwin.tar.gz"
      sha256 "59c8e09e458f3dbb50a2ee26b4eb18ba40bac34a622b3c58cfef257a4bbcc6b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.8/iohr-0.1.0-alpha.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79046dd4f4f95946962683ce327feb6a9fc50c0cf81a5b7024d5312005e8fb23"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.8/iohr-0.1.0-alpha.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7d575a7d536c0eed43cdddbe71d0c996df6c6501e651ac93d8e46cf40bb2aea6"
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
