class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "0.1.0-20260308-668288e"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260308-668288e/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "35b1300f2872501eae07844c92d6840d0b8a3edbe4e21bdb674a910554c19b96"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/v0.1.0-20260308-668288e/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "440f3055ee342d44222c41d9337cbed0a95669c19d793048de2935368220e29c"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
