# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.31; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.31/iohr-0.1.0-alpha.31-aarch64-apple-darwin.tar.gz"
      sha256 "45066de6b58850b3dff0b4a461825792b7ce2cbd83167256e1cdcc361ef08ad6"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.31/iohr-0.1.0-alpha.31-x86_64-apple-darwin.tar.gz"
      sha256 "f5af3359a28b1fd95c542f425c153fd19050d94da25aba1b55cd6db72c8fe95b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.31/iohr-0.1.0-alpha.31-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb2a2d61ae21a0bb00506aca2ba9430430ad4510ac7fa4550e29bde220435749"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.31/iohr-0.1.0-alpha.31-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6127152bf1fe34e34abe9e95bd6f8e0ce477dee6d58f128bfe651c4aa48079f3"
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
