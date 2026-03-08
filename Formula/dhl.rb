class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "latest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "aa207b0b519759331e70c0d4a14c05f1ecfc14f1cc66dc8dc6499bdc630c52f9"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "a7974a17bad14676ee0e93016a3c7314e11c60d66e9c3a7aca05ae0219c413dc"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
