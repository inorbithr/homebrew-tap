# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.34; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.34/iohr-0.1.0-alpha.34-aarch64-apple-darwin.tar.gz"
      sha256 "9aef96fe2187b0e9c2b12eb11fff187132720e080dbb57766eb663a7fd6f5dd3"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.34/iohr-0.1.0-alpha.34-x86_64-apple-darwin.tar.gz"
      sha256 "86729f010ab47a3f82161c3066b7de4f3de477ec2377848a9c2eb17f4b8a497d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.34/iohr-0.1.0-alpha.34-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8957ffe5f314541fd2ce0107784af6e8e533d861b76777610a4f8859ee197399"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.34/iohr-0.1.0-alpha.34-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8f0131e33c4b8d794933966a72efd0507e44787201030a79ac50576f49fab22"
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
