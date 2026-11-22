class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.1-2/gxt-1.0.1-2-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "0871df75d842808c8e523c9bd13e32ad03c7e4f88872b86bef1b7ee83d4c6974"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.1-2/gxt-1.0.1-2-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "ec1daad8a47c5258da1f8b547d7520652f272a211e4decaf84d2180bd2b79235"
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
