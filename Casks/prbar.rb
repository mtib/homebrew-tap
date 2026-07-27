cask "prbar" do
  # Tracks whatever mtib/prbar publishes as its latest release, so this cask never needs
  # bumping — `brew upgrade --cask prbar` re-downloads and reinstalls.
  version :latest
  sha256 :no_check

  # A release asset rather than a source zipball: .app bundles ship as ditto zips so their
  # metadata survives the round trip. `brew style` flags this; it's the wrong call here.
  url "https://github.com/mtib/prbar/releases/latest/download/prbar.zip",
      verified: "github.com/mtib/prbar/"
  name "prbar"
  desc "Menu bar app for the GitHub pull requests waiting on your review"
  homepage "https://github.com/mtib/prbar"

  depends_on macos: :tahoe

  app "prbar.app"

  zap trash: [
    "~/Library/Application Support/prbar",
    "~/Library/Preferences/dev.mtib.prbar.plist",
  ]

  caveats <<~EOS
    prbar is ad-hoc signed rather than notarized, so Gatekeeper will refuse to launch it
    unless it was installed with --no-quarantine:

      brew install --cask --no-quarantine mtib/tap/prbar

    Launch it once with `open -a prbar` and allow notifications when macOS asks. It
    authenticates through the GitHub CLI by default; run `gh auth login` if you haven't, or
    add a personal access token under Settings in the app.
  EOS
end
