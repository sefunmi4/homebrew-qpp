class Qpp < Formula
  desc "Q++: quantum–classical compiler and simulator"
  homepage "https://github.com/shefash/qpp"
  url "https://github.com/shefash/qpp/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "shasum -a 256 qpp-0.2.0.tar.gz"
  license "Apache-2.0"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", "-DCMAKE_BUILD_TYPE=Release"
    system "cmake", "--build", "build", "--config", "Release", "--parallel"
    system "cmake", "--install", "build", "--prefix", prefix
  end

  test do
    system "#{bin}/qpp", "--version"
  end
end
