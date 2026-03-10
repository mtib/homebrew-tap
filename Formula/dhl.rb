class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260310-144c8cc"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-144c8cc/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "bc273243f79ea6865f2393ddec00ddff2e2e3223cd91955039f5b3c295107da6"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-144c8cc/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "22c475fed470787a8b03d9438ca64190619ee1c593ff2bf41f068bce7eb19ad4"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
