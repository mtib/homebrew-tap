class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260423-ed36b0e"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260423-ed36b0e/mini-aarch64-apple-darwin.tar.gz"
      sha256 "9f51b75a4538912ddae3896af44ab36e5c46188c6a84c1937bad9ad2982b811b"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260423-ed36b0e/mini-x86_64-apple-darwin.tar.gz"
      sha256 "56d72167c0d9b06dbfc5cad4b44e0f76cd353cfe228ac2c7c48e17a894ca0219"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
