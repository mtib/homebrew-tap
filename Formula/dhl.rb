class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260310-eab43c0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-eab43c0/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "a7dbeb5e8d9243d9e3080633c5a9951405fd3f4fa3ca0bd6225b6010a3a56c0a"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-eab43c0/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "ec81a38a22e73ffe9fe2e49478d0decc363ec68361fbaf187f9a46bedb1faf35"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
