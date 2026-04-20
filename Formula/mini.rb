class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260420-fcc8479"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260420-fcc8479/mini-aarch64-apple-darwin.tar.gz"
      sha256 "953edd09ee4d7b47da57b2a541b1e5a65ee76377fe93f2d0185129dca5147ea7"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260420-fcc8479/mini-x86_64-apple-darwin.tar.gz"
      sha256 "2814b739dd90b73e8126ff93bad3b189bce7615e902a0e997e5a28ed8fad3e55"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
