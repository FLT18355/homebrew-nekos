class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.2/gxt-1.0.2-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "d5a7d9b9fd1cd0d1a821fd12ddbd7699f8fae69f213b2a49f6cc64e204ac9075"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.2/gxt-1.0.2-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "df841d45e09b5416e918742c92fd1065dd3269af47c32d01a7e631ce9a9d3f01"
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
