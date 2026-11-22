class Neko < Formula
  desc "Terminal music player"
  homepage "https://github.com/FLT18355/neko"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.11/neko-v0.2.11-linux-x86_64.tar.gz"
  sha256 "3876f41ebfa290b027f3a2bc64a98068f4e21eef87ed5413061803650ee55bee"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.11/neko-v0.2.11-macos-aarch64.tar.gz"
    sha256 "44db54c37b0a8a4b8acc43fcb4b8ac2462b9810759a771b284f4717b80c65318"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.11/neko-v0.2.11-linux-aarch64.tar.gz"
    sha256 "466f25b6dabe798e98177ac56760eacd96b6d060ff3f902c86c8aff2b71bcea0"
  end

  def install
    bin.install Dir["**/neko"].first
  end

  test do
    assert_path_exists bin/"neko"
  end
end
