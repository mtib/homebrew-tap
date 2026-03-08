class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "latest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "a8e07a7af9e5573005b78ec2d154cfd03d2d1bbe56dfb6418f7bab295050499c"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "e70932bc667a1f000bccaf4b9bf27c1ba7d03aa5c277233ca6de8301f1ea35f5"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
