# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://developers.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0/iohr-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "7262d32f0b34ba5f9b8de476d1cb408c244fc70f9cf2688a9855c0887f569cc0"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0/iohr-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "c080723f8dfd3c0657dea92713b28e0e668b6ae18544950b45367ec7db4dfd9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0/iohr-0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fefa7b64b72cb0483c25902193bafdeaa35670f3ad6e333be8e47c89425475bb"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0/iohr-0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77b8c63d5d1c47c865eb6f9e5fcb38cff3fb9c950449de765a288e3302b36eed"
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
