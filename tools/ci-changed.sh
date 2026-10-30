#!/usr/bin/env bash
# `mise run ci:changed`: the part of CI (.github/workflows/ci.yml) that runs without Homebrew,
# a network or a release archive: every formula must parse as Ruby. `brew style`, the strict
# online audit and the install and test from the release archives stay in CI (macOS and
# Linux). This is the check the coordinator's Checked gate runs in each job checkout
# (RFC 0120). `--plan` prints the steps without running them. No origin/main to compare
# with: every step.
set -euo pipefail
cd "$(git rev-parse --show-toplevel)"

plan=0
[ "${1:-}" = "--plan" ] && plan=1
if base=$(git merge-base HEAD "${CI_CHANGED_BASE:-origin/main}" 2>/dev/null); then
  files=$({ git diff --name-only "$base"; git ls-files --others --exclude-standard; } | sort -u)
  echo "ci:changed: $(printf '%s\n' "$files" | grep -c .) changed file(s) since $(git rev-parse --short "$base")"
  touched() { printf '%s\n' "$files" | grep -Eq "$1"; }
else
  echo "ci:changed: no ${CI_CHANGED_BASE:-origin/main} to compare with, every step"
  touched() { true; }
fi

steps=()
touched '^(Formula/|mise\.toml$|\.github/workflows/ci\.yml$)' && steps+=(syntax)
echo "ci:changed: ${steps[*]:-nothing to check}"
[ "$plan" = 1 ] && exit 0

for step in ${steps[@]+"${steps[@]}"}; do
  case "$step" in
    syntax)
      for f in Formula/*.rb; do
        [ -e "$f" ] || continue
        ruby -c "$f" >/dev/null && echo "ci:changed: $f parses"
      done
      ;;
  esac
done
echo "ci:changed: ${#steps[@]} step(s) passed"
