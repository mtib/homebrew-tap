class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260812-f55e5aa"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260812-f55e5aa/mini-aarch64-apple-darwin.tar.gz"
      sha256 "55baa14e7c8d98b6ff61567534a681fec270f3b261de73aa9c54d700b4758778"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260812-f55e5aa/mini-x86_64-apple-darwin.tar.gz"
      sha256 "4efc49de85f3b33b96fb3d14594bee4cd773bc0856253765443254152f3c4239"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
