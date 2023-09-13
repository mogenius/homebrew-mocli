class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-darwin-arm64.tar.gz"
      sha256 "52e88f5775de43e55653ce9f58ace77a72312e3cf742f3915e95ea9e262fd088"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-darwin-amd64.tar.gz"
      sha256 "900b4cbde8f301ca8bff328c2d1a7826d958db68582da9e5d5ee44351bedac2a"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-linux-amd64.tar.gz"
        sha256 "63e351481faf67e766828a9bf955fd8657b5dee9bc48666ee81a9f3af8930f54"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-linux-386.tar.gz"
        sha256 "bcd3dcc62b4ad5cf00ddea5c596dde699f9d6b3d0fc4ae74bb2fd1b31f2eaa37"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-linux-arm64.tar.gz"
        sha256 "3d9c2b48853ea827fa5db1bfcff5948d72da74aebbd24c822bea0a607d0e8240"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.17/mocli-v1.2.17-linux-arm.tar.gz"
        sha256 "d26df2d0f1ee5584077f723351bd0f0f645363365caec97214e7385b6b170d5e"
      end
    end
  end
  
  version "1.2.17"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.2.17-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.2.17-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.2.17-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.2.17-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.2.17-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.2.17-linux-arm" => "mocli"
      end
    end
  end
end
end
