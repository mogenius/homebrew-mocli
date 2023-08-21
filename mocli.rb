class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-darwin-arm64.tar.gz"
      sha256 "b52165e74f063236bc5b8a6a12be9bd5753de6d2231c87b8b124fb63c589f011"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-darwin-amd64.tar.gz"
      sha256 "cc04ae9c0dfe54097cce82d468cfb6bc30e5de25768470f24599d0e498ea7eff"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-linux-amd64.tar.gz"
        sha256 "76523e767a5965b15c860d38fb429c6bc188d3b81b4f95fc57475a9159701365"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-linux-386.tar.gz"
        sha256 "09866a598fd87ccb48db6e56659258cadc56d02855f67adeaf46cf5e60b22f03"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-linux-arm64.tar.gz"
        sha256 "1a0d875e864da6a6fd03084ecdc53ef8d140b0cac6d17651a7dd280524564b53"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.9/mocli-1.2.9-linux-arm.tar.gz"
        sha256 "f53ce3790f0d05f58cceb32b7cea69272e6b716020b16612820e784b6e687079"
      end
    end
  end
  
  version "1.2.9"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.9-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.9-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.9-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.9-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.9-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.9-linux-arm" => "mocli"
      end
    end
  end
end
end
