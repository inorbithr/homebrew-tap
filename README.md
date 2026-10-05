# InOrbit Homebrew tap

`iohr`, the InOrbit command line, for macOS and Linux:

```sh
brew install inorbithr/tap/iohr
iohr login
```

The formula installs the prebuilt, attested archive for your platform from the
[`inorbithr/sdk` releases](https://github.com/inorbithr/sdk/releases) and checks its
SHA-256; nothing is compiled. To check where an archive came from:

```sh
gh attestation verify "$(brew --cache iohr)" --repo inorbithr/sdk
```

`Formula/iohr.rb` is written by the SDK repository's release workflow
(`tools/cli-formula.sh`) and arrives here as a pull request for each release; it is not
edited by hand. Releases before 1.0 are pre-releases.

Other ways to install (APT, winget, the shell and PowerShell installers) and the source:
[inorbithr/sdk](https://github.com/inorbithr/sdk/tree/main/cli) and
[docs.inorbit.hr](https://docs.inorbit.hr). Security reports:
[SECURITY.md](https://github.com/inorbithr/sdk/blob/main/SECURITY.md).

## Dependencies

The workflow's actions stay on their latest releases, pinned by commit SHA. Dependabot
checks them daily with a 7-day cooldown; patch and minor updates merge themselves once
`ci-ok` passes (`.github/workflows/dependabot-automerge.yml`), majors wait for a
maintainer.
