class Neko < Formula
  desc "Terminal music player"
  homepage "https://github.com/FLT18355/neko"
  license "MIT"
  
  # 顶层默认提供 Linux x86_64 的包，防止 test-bot 找不到 URL
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-linux-x86_64.tar.gz"
  sha256 "b586d0e350dc7da251adc5e8a3fc036c812d17b6f8ff20d4a45c0b4aa16a1410"
  version "0.2.6"

  # 用 if 替代 on_macos/on_linux，避免语法报错
  if OS.mac? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-macos-aarch64.tar.gz"
    sha256 "90769a337a49e8fa651b9413d7599b42fb6860d208e941062d2939d2797c08b1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-linux-aarch64.tar.gz"
    sha256 "0de36b40b4cb582c216c1e9ee0e5b86b1b52540c44e6cfdae0da296492bbaaf5"
  end

  def install
    bin.install Dir["**/neko"].first
  end

  # Homebrew 强制要求的测试块
  test do
    assert_path_exists bin/"neko"
  end
end