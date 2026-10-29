# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.28; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.28/iohr-0.1.0-alpha.28-aarch64-apple-darwin.tar.gz"
      sha256 "de1f1110074dcfe422f354a37f76152e6f760c234de7c8edba264072e36aeeb9"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.28/iohr-0.1.0-alpha.28-x86_64-apple-darwin.tar.gz"
      sha256 "ba7660be356b9b9285d42e471c7249fc4acf1d0d340aefa6bd83289e20823a83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.28/iohr-0.1.0-alpha.28-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8187c4930a29e747eec88c7c7df523cc2f5ce0ed4c9bf9ff4d227e315a3cbb52"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.28/iohr-0.1.0-alpha.28-x86_64-unknown-linux-musl.tar.gz"
      sha256 "153686eeaaa4b5e3e71bade6679046ffe7489b643f87ddc2337815f354b523a9"
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
