# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.22; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.22/iohr-0.1.0-alpha.22-aarch64-apple-darwin.tar.gz"
      sha256 "466efe5c7640e9a5f7770a4cde9f0632ebcb1876b6c85921638401ab54f223e6"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.22/iohr-0.1.0-alpha.22-x86_64-apple-darwin.tar.gz"
      sha256 "fd9e4785932293b74fc7ec9c4bcfe79e06a1ec5a4d3d3e16231139d8b00a49e1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.22/iohr-0.1.0-alpha.22-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a1eaa74b0eb446f1b2e64135db8d0dd94d6d0352a30e256d7b6b2ecdeaf492e"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.22/iohr-0.1.0-alpha.22-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8dd63b999ac9383d3f41a8c70fc2948e9e46402b9a92ce983065b9d90389d102"
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
