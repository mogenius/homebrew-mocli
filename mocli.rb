class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-darwin-arm64.tar.gz"
      sha256 "0c82f347d6529a67c78741ba15c76f96a464f584ac5aee321a65c230e9b25f56"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-darwin-amd64.tar.gz"
      sha256 "315321c380f7dc46c227c8618de66ca2124ea298d4b10afe6aff92193eb92148"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-linux-amd64.tar.gz"
        sha256 "bec1c4872556f8c13c962aec4abeeedf5b5e87b18a8b89b0cbe6db4ada114f47"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-linux-386.tar.gz"
        sha256 "4ca58668977fc0844f9ac99bb507eeb48fa66a9c615dd29a0359fa6daf0da1e7"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-linux-arm64.tar.gz"
        sha256 "bd9756c5f4126038a12b42a43f0ae3d0c67c6b487ffed21c7f52d32725214a8e"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.16/mocli-v1.2.16-linux-arm.tar.gz"
        sha256 "136d1f5970d1926e15f94d87d1f2bda10ce943968e3ba16f1af3be950cae78fc"
      end
    end
  end
  
  version "1.2.16"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.2.16-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.2.16-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.2.16-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.2.16-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.2.16-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.2.16-linux-arm" => "mocli"
      end
    end
  end
end
end
