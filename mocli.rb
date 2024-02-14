class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.7.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-darwin-arm64.tar.gz"
      sha256 "0a95781f02a77ee6e95d7ee59a5539e0e2f9a0352aff28758d6108502b05b911"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-darwin-amd64.tar.gz"
      sha256 "a4d0a9f88fbb9cc5a810496789423805f10687650e75f8e60313a4a54b2f385e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-linux-amd64.tar.gz"
        sha256 "2f6359395f351f313df1788ebf1a494527eedd9fa5688a7b68ca067976b6d0ba"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-linux-386.tar.gz"
        sha256 "7d3bc9ed5c8abab6b275c5a0ce41d573f8f13d61753f7d5047cf622669f4c321"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-linux-arm64.tar.gz"
        sha256 "afac0baaebea655cd5373f9b8deff971120f0b38f07105656b78b293bf7776ea"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.9/mocli-v1.7.9-linux-arm.tar.gz"
        sha256 "1b24389900a182f86e232558f6cd5df5056d05a5f8840070a4c0ba47161a5d18"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.7.9-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.7.9-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.7.9-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.7.9-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.7.9-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.7.9-linux-arm" => "mocli"
      end
    end
  end
end
end
