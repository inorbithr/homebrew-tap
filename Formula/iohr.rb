# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.3; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.3/iohr-0.1.0-alpha.3-aarch64-apple-darwin.tar.gz"
      sha256 "a7f22d1b82014567a48573770b401fb7d86b3cdfd3c38ee6274fb6da8e8afbb3"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.3/iohr-0.1.0-alpha.3-x86_64-apple-darwin.tar.gz"
      sha256 "bec25e04c87086bad087d14a281af80eaa940771ad44fb32fb4dd9b11c92809d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.3/iohr-0.1.0-alpha.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "420a52abaebbcb8fb81d551722e4c89f7aa7fc1b85d80029e11079b7e33281e3"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.3/iohr-0.1.0-alpha.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "037f07b1a5488d7c25550f6587c0a30fbfbf130d39781b3dab4a762a421d8ee0"
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
