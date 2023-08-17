class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-darwin-arm64.tar.gz"
      sha256 "7398eb6bfdd3458d150461ac42697fb975a2654165f90a94ab15170def03d81c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-darwin-amd64.tar.gz"
      sha256 "e893ce3d093c4a9eb65ad0177fc9342143e2e74e25d2f5ed11e6ff3d3aad9a18"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-linux-amd64.tar.gz"
        sha256 "ecd562417f99f2b3bd5b1a94e3ddf55e3482a41a04c32ac5f2072f8e71ef7e20"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-linux-386.tar.gz"
        sha256 "191d9a4344d32ace54f449ad9adafdc0c8a77ac18cb7fcfa1c93f2e65811972f"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-linux-arm64.tar.gz"
        sha256 "cb4e1193059d4ec2ea1004993764088e937fd2e9d0352604831dac59a524e4fc"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.0/mocli-1.2.0-linux-arm.tar.gz"
        sha256 "893d0be8432745060d05d778fe4e8d61b363619e536589ea535e68f87639cf47"
      end
    end
  end
  
  version "1.2.0"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.0-linux-arm" => "mocli"
      end
    end
  end
end
end
