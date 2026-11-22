class Neko < Formula
  desc "一个普通的终端音乐播放器"
  homepage "https://github.com/FLT18355/neko"
  license "MIT"

  # 顶层默认提供 Linux x86_64 的包，防止 brew test-bot 报错
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-linux-x86_64.tar.gz"
  sha256 "3993be343c86255ca93c4932f05984fd947176800abf72ee2accece4b8a05c12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-macos-aarch64.tar.gz"
      sha256 "c76a52df61d5e9c91019bff7f118b34f35bfb0516e310f6b0545d502273739ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.10/neko-v0.2.10-linux-aarch64.tar.gz"
      sha256 "c781bbadfe9c966a6a915630b6c57945ab7d62a6a6f35d85f6a51b58fb9f3898"
    end
  end

  def install
    bin.install Dir["**/neko"].first
  end
end