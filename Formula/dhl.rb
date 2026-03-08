class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "latest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "f4dbcfcb604dd7056c9cd6f505ddfed246af2ee75494c820bc4c308c0b268cae"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "79ec73df00de686e675c6eed4e71e242c767302d4e514ae17c84b1b332d24bb3"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
