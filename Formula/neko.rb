class Neko < Formula
  desc "Terminal music player"
  homepage "https://github.com/FLT18355/neko"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-linux-x86_64.tar.gz"
  sha256 "3993be343c86255ca93c4932f05984fd947176800abf72ee2accece4b8a05c12"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-macos-aarch64.tar.gz"
    sha256 "c76a52df61d5e9c91019bff7f118b34f35bfb0516e310f6b0545d502273739ad"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-linux-aarch64.tar.gz"
    sha256 "c781bbadfe9c966a6a915630b6c57945ab7d62a6a6f35d85f6a51b58fb9f3898"
  end

  def install
    bin.install Dir["**/neko"].first
  end

  test do
    assert_path_exists bin/"neko"
  end
end
