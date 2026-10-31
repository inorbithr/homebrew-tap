# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.30; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.30/iohr-0.1.0-alpha.30-aarch64-apple-darwin.tar.gz"
      sha256 "82198adf61eda42fb677bc55832d13e55b9a260aca32417707610dbce108a27a"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.30/iohr-0.1.0-alpha.30-x86_64-apple-darwin.tar.gz"
      sha256 "d65f650243d77affebe309eed48f6b32ccac2e5b9a94c14690a912bac434a137"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.30/iohr-0.1.0-alpha.30-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84454d172d9adb53bbbceddd6aef85fd6642846d0a90d2099be2fcdfebb67c76"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.30/iohr-0.1.0-alpha.30-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c447719ee2969a25c41fd27ba73082191e3333618c8bb04d7202cf22bdb4d47"
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
