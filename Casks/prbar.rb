cask "prbar" do
  # Tracks whatever mtib/prbar publishes as its latest release, so this cask never needs
  # bumping — `brew upgrade --cask prbar` re-downloads and reinstalls.
  version :latest
  sha256 :no_check

  url "https://github.com/mtib/prbar/releases/latest/download/prbar.zip",
      verified: "github.com/mtib/prbar/"
  name "prbar"
  desc "Menu bar app for the GitHub pull requests waiting on your review"
  homepage "https://github.com/mtib/prbar"

  depends_on macos: ">= :tahoe"

  app "prbar.app"

  caveats <<~EOS
    prbar is ad-hoc signed rather than notarized, so Gatekeeper will refuse to launch it
    unless it was installed with --no-quarantine:

      brew install --cask --no-quarantine mtib/tap/prbar

    Launch it once with `open -a prbar` and allow notifications when macOS asks. It
    authenticates through the GitHub CLI by default; run `gh auth login` if you haven't, or
    add a personal access token under Settings in the app.
  EOS

  zap trash: [
    "~/Library/Application Support/prbar",
    "~/Library/Preferences/dev.mtib.prbar.plist",
  ]
end
