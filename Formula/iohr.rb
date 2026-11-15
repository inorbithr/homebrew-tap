# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.1; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://developers.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.1/iohr-0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "0b4fd1689cbbbbd96cf0bdd923b136869ee56687fd97ae27fa1c6c4f9826648d"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.1/iohr-0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "f814b3a2ee368035cb4c7fba45813fcd3dfc52d8dbf83d37c345ffa5c494d39c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.1/iohr-0.1.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "16914402114a0dac3d941604749c966909d1b4ff7a06d106aa3c2d7e7daab6db"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.1/iohr-0.1.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0feb026f5a88a4709baf4fda4ef3871dcd8586741ec4742247fc6d699f86bc21"
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
