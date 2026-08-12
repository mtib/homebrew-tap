class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.1.0.20260812.8"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.1.0-20260812-aa18f11/mini-aarch64-apple-darwin.tar.gz"
      sha256 "48030d78a9b7ec0f73493c884a24417097bbbcb1e42e203de9ec90df5cae13ed"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.1.0-20260812-aa18f11/mini-x86_64-apple-darwin.tar.gz"
      sha256 "0932cb37ad5889efb99c050a08f6a5359f8c53c179e828f890a0d0194e2a012c"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
