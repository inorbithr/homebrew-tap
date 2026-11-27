# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.2; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://developers.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.2/iohr-0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "5a2e36fceb6f858459c9bc0fab457641513c4b4c69c194a15fa8d0a90b80784f"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.2/iohr-0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "5fc2b79cdfeac3d2bf4911a60c6217993d301f4beda07740f7b664e6974cc59c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.2/iohr-0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "582aee7f3012005373c71d69a8397ad978df71c3a09c5c7ee5db7d7fc779296e"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.2/iohr-0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf47d0d07b19367fa3b150833909ab470ad759e4ac9d1e7b07454d73fe0fc51d"
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
