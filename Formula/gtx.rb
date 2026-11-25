class Gtx < Formula
  desc "Terminal GitHub workbench built on ratatui and crossterm"
  homepage "https://github.com/FLT18355/gitx-tui"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.8/gxt-1.0.8-x86_64-unknown-linux-gnu.tar.gz"
  sha256 "168be307195c7c75aab91401d025ec75a5adb468f36439264e8195abd3e545af"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/gitx-tui/releases/download/v1.0.8/gxt-1.0.8-aarch64-unknown-linux-gnu.tar.gz"
    sha256 "cbb51987ce62493145a1c31004e6f63dbabbb4e82196f1eb59a32f9e6c79bf25"
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
