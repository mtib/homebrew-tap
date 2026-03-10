class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260310-7ef13f9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-7ef13f9/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "e969a706d38117176667d4f54c4397f17c08f7a7de770a45fd1cdfda3f5abec0"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-7ef13f9/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "ae406e77df9e8c37274f3f345f47fcccf11fb4bce8aefd34394ad0aeb245cea5"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
