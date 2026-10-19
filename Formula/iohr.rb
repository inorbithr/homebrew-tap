# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.17; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.17/iohr-0.1.0-alpha.17-aarch64-apple-darwin.tar.gz"
      sha256 "4e687222e486e724da0b8fbaa6f38db574e0925c2afa4d26556f5accf8680a3c"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.17/iohr-0.1.0-alpha.17-x86_64-apple-darwin.tar.gz"
      sha256 "e63276479ef836806c3dee6440b8229d9f8899ee3c384ccb41844ff230d14a12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.17/iohr-0.1.0-alpha.17-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f65c660b92512b2b1bc6279bd51b31a6ee918ec9dc0551eb5eb5f6579cfc188d"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.17/iohr-0.1.0-alpha.17-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8206ca71e266b7fcc4c1ec1f87587dd0f8316f4e193276b6c1985dc63dfa28d3"
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
