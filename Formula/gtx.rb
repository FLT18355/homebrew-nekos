class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.3/gxt-1.0.3-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "eb82e73f1aad17fbb92fb07c5e15532ad05c9de3621e367e6fbc2e0507eec998"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.3/gxt-1.0.3-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "fddfa1c7de5c6f46fe8b88945b3923a93d77882836d6f7943028f7ca35c399b0"
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
