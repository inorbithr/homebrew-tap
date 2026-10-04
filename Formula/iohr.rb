# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.7; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.7/iohr-0.1.0-alpha.7-aarch64-apple-darwin.tar.gz"
      sha256 "900ba77f8d6974e3ee37a6db6ee4d32593453e8ac84a729bfa5170b1c35f4f1b"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.7/iohr-0.1.0-alpha.7-x86_64-apple-darwin.tar.gz"
      sha256 "981c91b31ec39ad89a86ac12c49627f9d85443fad0f789a40032a9e7739de3d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.7/iohr-0.1.0-alpha.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a9b13af6c894b1b452137839aa028a747e66938f8bea0b6dafdd562028d3f9f"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.7/iohr-0.1.0-alpha.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50259aa20c5b22e3ac0b34cc97b81233465d6ec8c7ced736192cb512baae395d"
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
