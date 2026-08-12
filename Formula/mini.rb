class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.1.0.20260812.7"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.1.0-20260812-2348ce3/mini-aarch64-apple-darwin.tar.gz"
      sha256 "d5f2c98000ab117e230eec29761390fc051526e3b22a754c616e8dee22d61d00"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.1.0-20260812-2348ce3/mini-x86_64-apple-darwin.tar.gz"
      sha256 "a9904a92f29a56b7ad62ce9186a20902694cf30ff536d88c7ea630698aabc15b"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
