class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260310-2468bc1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-2468bc1/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "db7b1fbc740f91970c8bfe9a89accb80c76d79f418be7a51e302311577de0f87"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-2468bc1/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "e9c1805130003a5d85fe14ddecc1b6a4e3be34597890ccecbe57bb0629adce13"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
