class Omp < Formula
  desc "AI coding agent CLI (oh-my-pi)"
  homepage "https://github.com/can1357/oh-my-pi"
  url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.1/omp-linux-x64"
  sha256 "04e9490f9394da6d6804474cc2e41eb3d18f8e26215df4b34bdd4ad4c0d8a401"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.1.1/omp-linux-arm64"
    sha256 "f022f720c4899eb24c6e5e34dcbbae98ae05f5532bb03e97dffc02cfc8dd9a6f"
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
