class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260310-f214fea"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-f214fea/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "eabe7e4d85ed937915428d00ba8d23ec9f9fbcc836fc1cefa6b92405bc1e3157"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260310-f214fea/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "5d30e39bc54155e2697acb9f1f2f1774cad9a0587c368aef795e0e6c6fdcbd40"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
