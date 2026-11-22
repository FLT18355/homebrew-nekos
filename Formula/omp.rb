class Omp < Formula
  desc "An AI coding agent CLI (oh-my-pi)"
  homepage "https://github.com/can1357/oh-my-pi"
  version "19.1.0"
  license "MIT" # 如果项目是别的协议，请自行修改

  on_linux do
    if Hardware::CPU.arm?
      url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.0/omp-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    elsif Hardware::CPU.intel?
      url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.0/omp-linux-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    # 直接把下载下来的二进制文件重命名为 omp 并放入 bin
    if Hardware::CPU.arm?
      bin.install "omp-linux-arm64" => "omp"
    elsif Hardware::CPU.intel?
      bin.install "omp-linux-x64" => "omp"
    end
  end
end