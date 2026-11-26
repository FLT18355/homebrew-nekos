class Neko < Formula
  desc "Terminal music player"
  homepage "https://github.com/FLT18355/neko"
  url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.12/neko-v0.2.12-linux-x86_64.tar.gz"
  sha256 "b19bf9543b3d5c9913c40de60885bdd5f2cb67cae51e2c73a1cc24a125be13a0"
  license "MIT"

  if OS.mac? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.12/neko-v0.2.12-macos-aarch64.tar.gz"
    sha256 "ae1d7fb5cdbcdcc32ae17f70ce07543b7e1bc9f24492a1fa0d4a87a784f2d37e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/FLT18355/neko/releases/download/v0.2.12/neko-v0.2.12-linux-aarch64.tar.gz"
    sha256 "1a3cc6fe46b7683ba4dc6a957705e6003d7143cda497225e226054865084e363"
  end

  def install
    bin.install Dir["**/neko"].first
  end

  test do
    assert_path_exists bin/"neko"
  end
end
