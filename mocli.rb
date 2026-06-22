class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.11.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-darwin-arm64.tar.gz"
      sha256 "bbfa798cc1f8ef20e6276437fb13773903f7378edf10a10f0627b150b34c81a0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-darwin-amd64.tar.gz"
      sha256 "52657b98ce1767512078b53bca0b0a504795713212043fd7c6df49ef4752b04a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-linux-amd64.tar.gz"
        sha256 "3124917d0e19c08c258130e6d9add3d030c373c1aff6b6dec0a0f51d76c4705e"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-linux-386.tar.gz"
        sha256 "ee9d5df2c8ca73e6b823c7b0b9d5715bd8377bfa561bf2f6a80abc85777c9d74"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-linux-arm64.tar.gz"
        sha256 "fbdd215498a51b533af6fb14169195ae6bcd86fa68eb042e77cb2f0f049e91d8"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.1/mocli-v1.11.1-linux-arm.tar.gz"
        sha256 "6d900f7d45799e352ca0b1d0a91973162a3c62e490b565b1c43e2a641f518b53"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.11.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.11.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.11.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.11.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.11.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.11.1-linux-arm" => "mocli"
      end
    end
  end
end
end
