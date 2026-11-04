# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.32; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.32/iohr-0.1.0-alpha.32-aarch64-apple-darwin.tar.gz"
      sha256 "019fc2bdc5acf0696f31e9b090d2a1b275f14e19af8b221278548816e0c50ac9"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.32/iohr-0.1.0-alpha.32-x86_64-apple-darwin.tar.gz"
      sha256 "8619053617f7cda4a339e369bbe0262fe571629c533414a508c918a5ceb77cc4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.32/iohr-0.1.0-alpha.32-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed642828e25fd66c01f8f128d88cb06f19d3a92683e0874faaaf2f8863a3c228"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.32/iohr-0.1.0-alpha.32-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1fa0ce67cf39f3093ae28360c4109d4e23324fc45f0b329e05dc03e14468d6fe"
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
