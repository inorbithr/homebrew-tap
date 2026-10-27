# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.26; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.26/iohr-0.1.0-alpha.26-aarch64-apple-darwin.tar.gz"
      sha256 "638129f04953d57b7f556c6523576ea7c138d10f94f7a5c11bc1fdb9cd38c800"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.26/iohr-0.1.0-alpha.26-x86_64-apple-darwin.tar.gz"
      sha256 "180e96e89509aba145c7d1b17ea234580eca642e245b480679fc3c0f692907de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.26/iohr-0.1.0-alpha.26-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08a919f31c02de37848f5a23a8e42f8427486e9064b15e3970df640d2b6b1199"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.26/iohr-0.1.0-alpha.26-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0eccf2ea4645de8fcb458748caad628ab734289c6e7ec070929d9edd6a74c71"
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
