# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.6; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.6/iohr-0.1.0-alpha.6-aarch64-apple-darwin.tar.gz"
      sha256 "e805e53ebde022dd41ef41fec37ed08f07968846ed56d127e2a661d0d3f21e46"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.6/iohr-0.1.0-alpha.6-x86_64-apple-darwin.tar.gz"
      sha256 "26b066497ec9618ddffe7f874978f50c186b10602689e5049681ff963bc5ab7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.6/iohr-0.1.0-alpha.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2b4a7b93e277546d43d5458e9dbb2a2bd7d61b14f76d3a4da7be1faaade867de"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.6/iohr-0.1.0-alpha.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cc3ec41c37f2751d7cfaea81b0e377bd887d6aadfe2be35f66a6286fbd32c0a2"
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
