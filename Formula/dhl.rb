class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260311-7e6b2ce"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260311-7e6b2ce/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "fa877c6a1b83e1f9033a757b6e904c993bf804ceb6ff2cd5a5fa6f7d0b4fa8a3"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260311-7e6b2ce/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "8498b11960759996cf725649e0a9b3b3593049220d5b0bad3b0113cb75b0c2f3"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
