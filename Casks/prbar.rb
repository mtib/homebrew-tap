cask "prbar" do
  version "0.1.3"
  sha256 "7eb2d5644a808f6b36049972598bf6802008ddda7258ee600f82368cd2b97545"

  # A release asset rather than a source zipball: .app bundles ship as ditto zips so their
  # metadata survives the round trip.
  url "https://github.com/mtib/prbar/releases/download/v#{version}/prbar.zip",
      verified: "github.com/mtib/prbar/"
  name "prbar"
  desc "Menu bar app for the GitHub pull requests waiting on your review"
  homepage "https://github.com/mtib/prbar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "prbar.app"

  zap trash: [
    "~/Library/Application Support/prbar",
    "~/Library/Preferences/dev.mtib.prbar.plist",
  ]

  caveats <<~EOS
    prbar is ad-hoc signed rather than notarized, so Gatekeeper will refuse to launch it
    until you clear the download's quarantine flag:

      xattr -dr com.apple.quarantine /Applications/prbar.app
      open -a /Applications/prbar.app

    Repeat the xattr step after every upgrade — a fresh download is quarantined again.

    Allow notifications when macOS asks. prbar authenticates through the GitHub CLI by
    default; run `gh auth login` if you haven't, or add a personal access token under
    Settings in the app.
  EOS
end
