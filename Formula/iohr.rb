# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.29; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.29/iohr-0.1.0-alpha.29-aarch64-apple-darwin.tar.gz"
      sha256 "b4f312e16afb450dbc8a49c88c526fa6bc2f103e7c23d294063d98c4d1f9f50c"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.29/iohr-0.1.0-alpha.29-x86_64-apple-darwin.tar.gz"
      sha256 "fc8e0d9a65ab6d926e1fd2f5e4f8a4315b986316f8b9b5c6f240359b98667e00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.29/iohr-0.1.0-alpha.29-aarch64-unknown-linux-musl.tar.gz"
      sha256 "383be16615fb5f72e16f325fd952940098c32a296d090513c3067d809d43419a"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.29/iohr-0.1.0-alpha.29-x86_64-unknown-linux-musl.tar.gz"
      sha256 "887a5b92c0c829478ea393491466e4f02341c49758511ae1ce87e5cbc881ca31"
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
