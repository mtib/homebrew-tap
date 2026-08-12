class Mini < Formula
  desc "CLI for managing tmux sessions on a remote machine via SSH"
  homepage "https://github.com/mtib/mini"
  version "1.0.0-20260812-349bd76"

  on_macos do
    on_arm do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260812-349bd76/mini-aarch64-apple-darwin.tar.gz"
      sha256 "b8740c9a2a249d8576007464fdaeea05281366a40a6dcad5eb43fe42654008bf"
    end
    on_intel do
      url "https://github.com/mtib/mini/releases/download/v1.0.0-20260812-349bd76/mini-x86_64-apple-darwin.tar.gz"
      sha256 "7090a8dd2f5a14a7e6864fb1286078f85f8aeeed799031909790df4f6cb28fa9"
    end
  end

  def install
    bin.install "mini"
  end

  test do
    assert_predicate bin/"mini", :exist?
  end
end
