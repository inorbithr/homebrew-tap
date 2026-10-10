# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.14; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.14/iohr-0.1.0-alpha.14-aarch64-apple-darwin.tar.gz"
      sha256 "aa46a9a72b20f8da8025060bf3e182eedde541b362c4839aa0955e33e6cbe364"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.14/iohr-0.1.0-alpha.14-x86_64-apple-darwin.tar.gz"
      sha256 "6550cf9e8eea4fa53b2be8107bcba7af8425689ec3c05e5150b7da5fa744d9de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.14/iohr-0.1.0-alpha.14-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68a6b71eec63022f749444f8dc11f67b93aca95b328752c250e733374b438420"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.14/iohr-0.1.0-alpha.14-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f44d2b592d7fcb3405f7c841c9ab5cd512f6dd998469539ec101d32290caa1e"
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
