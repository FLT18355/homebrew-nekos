class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.6/gxt-1.0.6-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "4ff301d5e559e040d8ccfe339af67b08fa26d54f5fdcab6b86023222cf6e29f2"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.6/gxt-1.0.6-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "f74e061f2530b4e587e800fcc48c60b01241d628190e00972d48df6211dd4a33"
  end

  def install
    odie "gtx only supports Linux." unless OS.linux?
    bin.install Dir["**/gxt"].first
    chmod 0755, bin/"gxt"
  end

  test do
    assert_path_exists bin/"gxt"
  end
end
