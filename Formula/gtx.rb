class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.7/gxt-1.0.7-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "42ec623b95dd1d0c5443a2ca10f557fb05992ab7b848c48baee061e9b25d439e"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.7/gxt-1.0.7-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "3cdafaaa993abb9d55cc1362f9a1c64fa9a4de57ec01f3801774d19d3b58a05b"
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
