class Omp < Formula
  desc "AI coding agent CLI (oh-my-pi)"
  homepage "https://github.com/can1357/oh-my-pi"
  url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.2.1/omp-linux-x64"
  sha256 "e8b937f9bf023baa147bdd300ad5421af0a6ef8b1f350c47a9a93d5fca94feca"
  license "MIT"

  if OS.linux? && Hardware::CPU.arm?
    url "https://v4.gh-proxy.org/https://github.com/can1357/oh-my-pi/releases/download/v19.2.1/omp-linux-arm64"
    sha256 "92d4cce4b14814f6b838aa86dcec6359f0cb089cbcc300e8463cbb5326991fe0"
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
