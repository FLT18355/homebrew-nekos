class Neko < Formula
  desc "一个普通的终端音乐播放器" # 这里随便写一句你的工具描述
  homepage "https://github.com/FLT18355/neko"
  version "0.2.6"
  license "MIT" # 根据你实际的 LICENSE 修改

  # 根据系统架构自动选择下载链接和哈希值
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-macos-aarch64.tar.gz"
      sha256 "90769a337a49e8fa651b9413d7599b42fb6860d208e941062d2939d2797c08b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-linux-aarch64.tar.gz"
      sha256 "0de36b40b4cb582c216c1e9ee0e5b86b1b52540c44e6cfdae0da296492bbaaf5"
    elsif Hardware::CPU.intel?
      url "https://github.com/FLT18355/neko/releases/download/v0.2.6/neko-v0.2.6-linux-x86_64.tar.gz"
      sha256 "b586d0e350dc7da251adc5e8a3fc036c812d17b6f8ff20d4a45c0b4aa16a1410"
    end
  end

  def install
    # 解压出来的文件通常叫 neko，直接放入 Homebrew 的 bin 目录
    bin.install "neko"
  end
end