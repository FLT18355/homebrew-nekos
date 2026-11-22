class GitxTui < Formula
  desc "Gitx-tui terminal git client"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.1-2/gxt-1.0.1-2-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.1-2/gxt-1.0.1-2-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
  end

  def install
    odie "Gitx-tui only supports Linux." unless OS.linux?
    bin.install "gxt"
  end

  test do
    assert_path_exists bin/"gxt"
  end
