class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.11/gxt-1.0.11-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "ee3e9787c0d673c53b9fe68e2239c9cb128010fb2c80e2e4297fd61870a43261"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.11/gxt-1.0.11-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "e90d07d1b963a604456b6a47f20ed9ea4b0f4035149f0dd6a5079a1845c0d719"
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
