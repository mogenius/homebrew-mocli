class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.12.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-darwin-arm64.tar.gz"
      sha256 "2368d00519665620f1ad6e6ec4d82c3861f5ec00a6d885ec78e081806aac160d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-darwin-amd64.tar.gz"
      sha256 "1dd215937442c76a6392b458f2c5776e33c05b3a4a1fc7d9057b7ab710e40c8f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-linux-amd64.tar.gz"
        sha256 "a4ece5cd66765e985e2f2694c436f1a05c95634048aee6ae12cd06a10e3ebc2b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-linux-386.tar.gz"
        sha256 "70f8bbdb109d629360b76349da2be113a98491ce134a75a2cf85a7693b65a9ea"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-linux-arm64.tar.gz"
        sha256 "77567a0d969ae55a37e088b0d4ce49bcf22a6ee38d684d943164d002ca8fc298"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.0/mocli-v1.12.0-linux-arm.tar.gz"
        sha256 "a513948d0f843d93e07ce14577ae1bbbc3bdd8b34ad22816dae69dc61da8e971"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.12.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.12.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.12.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.12.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.12.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.12.0-linux-arm" => "mocli"
      end
    end
  end
end
end
