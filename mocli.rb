class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-darwin-arm64.tar.gz"
      sha256 "f9108a5eab66ee050475bd43e5c08c4e05e8e29f898fbbd7581fe9d68a4cef7d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-darwin-amd64.tar.gz"
      sha256 "dadd5a4231e12c3a279aa5e9f5c056481c502329d8342922b1447f2f4956ba49"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-linux-amd64.tar.gz"
        sha256 "82c6139285a34e4153359c3aeaa5bcfd127feba231f8da6bdcc35a4bc54a846d"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-linux-386.tar.gz"
        sha256 "8f0015940de74699e5f5a7a81828d2f5d030d5fa17151bc3769a9cd907ebc233"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-linux-arm64.tar.gz"
        sha256 "8509e642696949200f9c07538617a4633d8a2a2bbe49bcb0b9d043fec59766d3"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.8/mocli-1.2.8-linux-arm.tar.gz"
        sha256 "46539ddc218d84387d3609498d99b8f9ef23c69af076a4aa7c8c8977aa24a15b"
      end
    end
  end
  
  version "1.2.8"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.8-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.8-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.8-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.8-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.8-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.8-linux-arm" => "mocli"
      end
    end
  end
end
end
