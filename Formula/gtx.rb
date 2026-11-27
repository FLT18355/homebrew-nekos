class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.9/gxt-1.0.9-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "0bdb3cfc9d79472ab2763a6a48a5751b3631e744b3a8eef381add0e4e3a6ee69"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.9/gxt-1.0.9-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "9717b94c6ef6578406f82b0e637d627cae6f6ce5b70d6d813b40971b2be31588"
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
