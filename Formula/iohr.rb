# Written by inorbithr/sdk cli/release/formula.sh for iohr 0.1.0-alpha.13; regenerated on every
# release, not edited by hand.
class Iohr < Formula
  desc "InOrbit command-line tool: sign in, keep several accounts, call the API"
  homepage "https://docs.inorbit.hr"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.13/iohr-0.1.0-alpha.13-aarch64-apple-darwin.tar.gz"
      sha256 "506660b29d17506067595ec2f3327a2eb11f856038916ecdd432383d28797dae"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.13/iohr-0.1.0-alpha.13-x86_64-apple-darwin.tar.gz"
      sha256 "aface4f69231f061113c8b8586a1f7ada7786a9b827af6038c887c8f56a036ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.13/iohr-0.1.0-alpha.13-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03e16d325261029ce6365a0b99cacdf0339c08ee5b3ea6c5ab64088c96d95f35"
    end
    on_intel do
      url "https://github.com/inorbithr/sdk/releases/download/iohr/v0.1.0-alpha.13/iohr-0.1.0-alpha.13-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3df18855ec0cad4066511a269efd41a63caca183105a216e2ea4287680744740"
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
