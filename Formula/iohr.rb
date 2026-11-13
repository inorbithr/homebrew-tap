# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.39; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.39/iohr-0.1.0-alpha.39-aarch64-apple-darwin.tar.gz"
      sha256 "070a4fdaa018860be0b6fd5cf800f74ce25f1e89f8ed67c9572d3f7075834b95"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.39/iohr-0.1.0-alpha.39-x86_64-apple-darwin.tar.gz"
      sha256 "ad323887be7baded501657c65ed3f53badd9781b57f5bf3d7ebb9abeaccc26da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.39/iohr-0.1.0-alpha.39-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4df136324ce2ac817dbd95dc698678a43c1ce976f51d1335e252617afa705f1f"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.39/iohr-0.1.0-alpha.39-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe57e489c892610efd533d7e0526ee5912e617ee23e4f45f612acbb890e8edcc"
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
