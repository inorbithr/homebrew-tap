# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.5; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.5/iohr-0.1.0-alpha.5-aarch64-apple-darwin.tar.gz"
      sha256 "052a7f5ce92082ed90f2a342935b07e139058da7ef602f6b19b0099d7b6a8f34"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.5/iohr-0.1.0-alpha.5-x86_64-apple-darwin.tar.gz"
      sha256 "f152b15f9bec38c16f9a42b3629d02fc2b6c77932a02cdb68bd11f2b86ff0df7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.5/iohr-0.1.0-alpha.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2cefdb08c74b8cfb2c6684365dc5ace20ca82323489166f7932804d60eaaec05"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.5/iohr-0.1.0-alpha.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26b83ff2497ff8f19a4c2e74eb7cd2bf4668e760ca6b918db00923ba7ddfc6ff"
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
