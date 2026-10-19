# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.18; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.18/iohr-0.1.0-alpha.18-aarch64-apple-darwin.tar.gz"
      sha256 "39c62979dd2d98605ebbfd5c3d9a0b53c4f548dafc824b493b14258937acd252"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.18/iohr-0.1.0-alpha.18-x86_64-apple-darwin.tar.gz"
      sha256 "213315d45e6552bfb14e786c0bdc93816f8fb09ff70f47edad026d80f57716d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.18/iohr-0.1.0-alpha.18-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e2afac49ce12733a4c8f990cd042f1ab4cec11efb233b75415e20624df2ab2e"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.18/iohr-0.1.0-alpha.18-x86_64-unknown-linux-musl.tar.gz"
      sha256 "590e6a39e040fbab985ce98ce270a75bc787653f4319a8e99eea0a559110f684"
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
