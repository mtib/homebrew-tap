class Dhl < Formula
  desc "Git worktree workspace manager"
  homepage "https://github.com/mtib/dhl"
  version "latest"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-aarch64-apple-darwin.tar.gz"
      sha256 "720163e979420c61a28ffabd106d4dfab51ace05d54ed79a08174692bba5ea23"
    end
    on_intel do
      url "https://github.com/mtib/dhl/releases/download/latest/dhl-x86_64-apple-darwin.tar.gz"
      sha256 "c3e7945604159ef849755cc5d883e066cc3a952d018a5d0d925cb927d9c1c2eb"
    end
  end

  def install
    bin.install "dhl"
  end

  test do
    assert_match "dhl", shell_output("#{bin}/dhl --help")
  end
end
