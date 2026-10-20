# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.20; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.20/iohr-0.1.0-alpha.20-aarch64-apple-darwin.tar.gz"
      sha256 "1b59eb441a8ff3962da191ab4a6d2b6b05fd9717d61027b6413241356555bae5"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.20/iohr-0.1.0-alpha.20-x86_64-apple-darwin.tar.gz"
      sha256 "c0102d55a0d61a33747e135e60834fc64ee3ad28d87732a4c7a8cb363969faeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.20/iohr-0.1.0-alpha.20-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3a865e31c7b07cf0d85297dc7b6add5d338b2534514f0899c281172d1bd5e50a"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.20/iohr-0.1.0-alpha.20-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65d79f073dd696895a973a458183281ae805c28d6840b30415dc43866b0dc658"
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
