# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.12; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.12/iohr-0.1.0-alpha.12-aarch64-apple-darwin.tar.gz"
      sha256 "8787eea9dcd80eadf1e0ff49f85ca3e22f6c75193f97d35d1fad5f631dcad534"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.12/iohr-0.1.0-alpha.12-x86_64-apple-darwin.tar.gz"
      sha256 "598552c32728efc3fda58e1f2377d23d68e30be160fc213e3d43b6823b519515"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.12/iohr-0.1.0-alpha.12-aarch64-unknown-linux-musl.tar.gz"
      sha256 "caa66498715f3520a2edeeb55dab8585291456de4bcf4736857c1bede9a69fec"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.12/iohr-0.1.0-alpha.12-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d9765699ac485535c1c3a8b42ccc8045510d862ac94af0bd9ac8e294ee28a2a"
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
