class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260423-b2b9f5b"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260423-b2b9f5b/mini-aarch64-apple-darwin.tar.gz"
      sha256 "0a74d5265af431aeac8bdc1d24e1b6995cb99290f144a461bbeb4fee780aa0e6"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260423-b2b9f5b/mini-x86_64-apple-darwin.tar.gz"
      sha256 "3b4c7714ab87e1f5bee8e3bd60834ab77f638f85040b038e8f31ba5f2e3d508e"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
