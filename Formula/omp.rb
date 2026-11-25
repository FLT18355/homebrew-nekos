class Omp < Formula
  desc "AI coding agent CLI (oh-my-pi)"
  homepage "https://github.com/can1357/oh-my-pi"
  url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.2.0/omp-linux-x64"
  sha256 "74cb641d3fcdc22fa3f2141dafa4e66c9fc581d7d2d71753e690160980472c31"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.2.0/omp-linux-arm64"
    sha256 "5e30bfb1d1dab1778d24c576ddb23c942db3159f536a805abb4cda661fd607fb"
  end

  def install
    if OS.mac?
      odie "omp is only supported on Linux."
    elsif Hardware::CPU.arm?
      bin.install "omp-linux-arm64" => "omp"
    else
      bin.install "omp-linux-x64" => "omp"
    end
    chmod 0755, bin/"omp"
  end

  test do
    assert_path_exists bin/"omp"
  end
end
