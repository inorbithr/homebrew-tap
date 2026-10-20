# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.19; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.19/iohr-0.1.0-alpha.19-aarch64-apple-darwin.tar.gz"
      sha256 "a8dc5082b192dad03b6127c650701dab8c587ff25bb3185abcba2f50423124a7"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.19/iohr-0.1.0-alpha.19-x86_64-apple-darwin.tar.gz"
      sha256 "b3ee4fbd78d06156b56ce4754fae8b5e3803820c2ff5352926b37304244d6bbc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.19/iohr-0.1.0-alpha.19-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31143ca0b833f9bf85f80584661782dbef3862e376153303b64cab617496824d"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.19/iohr-0.1.0-alpha.19-x86_64-unknown-linux-musl.tar.gz"
      sha256 "295f1cca756b6f0485bd62d5a44d9f1497d3c69da541a101e18d465e3776b6cf"
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
