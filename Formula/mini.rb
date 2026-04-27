class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260427-2d23477"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260427-2d23477/mini-aarch64-apple-darwin.tar.gz"
      sha256 "58296cd7a1c51d4a43129426494194f2c20c0005fc420dfe59ba5ffad16d1901"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260427-2d23477/mini-x86_64-apple-darwin.tar.gz"
      sha256 "b5fd9434d85a5540236103455fe7db56de7066453f228475344e84cf3fff6492"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
