class Qpp < Formula
  desc "Q++: quantum–classical compiler and simulator"
  homepage "https://github.com/sefunmi4/qpp-gcc"
  on_macos do
    on_intel do
      url "https://github.com/sefunmi4/qpp-gcc/releases/download/v0.2.0/qpp-0.2.0-macos-x64.gz"
      sha256 "6ab0e3646c723191ab043fb0eb039daa0fa92415bc512d7270c9bd0693f86002"
    end

    on_arm do
      url "https://github.com/sefunmi4/qpp-gcc/releases/download/v0.2.0/qpp-0.2.0-macos-arm64.gz"
      sha256 "9a78e40c2960c72d0dc8d8f66164eab5fc8fc1fb1e0d0ee88491e2047f9a9a10"
    end
  end

  license "Apache-2.0"

  def install
    bin.install "qpp"
  end

  test do
    system "#{bin}/qpp", "--version"
  end
end
