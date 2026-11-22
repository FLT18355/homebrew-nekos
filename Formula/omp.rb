class Omp < Formula
  desc "AI coding agent CLI (oh-my-pi)"
  homepage "https://github.com/can1357/oh-my-pi"
  license "MIT"

  url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.0/omp-linux-x64"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  version "19.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.0/omp-darwin-arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.0/omp-linux-arm64"
    sha256 "785e8e519acb55852a85e5495271d768a221ca92c095c043cd3eb0d7f8d3eafc"
  end

  def install
    if OS.mac?
      odie "omp is only supported on Linux."
    elsif Hardware::CPU.arm?
      bin.install "omp-linux-arm64" => "omp"
    else
      bin.install "omp-linux-x64" => "omp"
    end
    chmod 0755, bin/"omp"
  end

  test do
    assert_path_exists bin/"omp"
  end
end