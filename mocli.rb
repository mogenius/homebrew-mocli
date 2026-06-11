class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.10.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-darwin-arm64.tar.gz"
      sha256 "19984c07cbefbc5134176e85d0b81889a4737c706f0769e5fae9b5a41654e4eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-darwin-amd64.tar.gz"
      sha256 "2497495f6f7a2eace58e1125c7e735123a428f80009479675a21f2401eaa1bed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-linux-amd64.tar.gz"
        sha256 "3ab2c6b676368ac5c4c63fc4eb1c265ba4147861a3109a13acd0b1830cf5e89b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-linux-386.tar.gz"
        sha256 "6a48d008fb8930dc1a3f24a933d3f65ae70f9229d47e1a2c245f8c77a938d519"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-linux-arm64.tar.gz"
        sha256 "764314e5bb8fbbd14272d610eefb147cbe450c84dad66f7c65c1b675bc3862f4"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.2/mocli-v1.10.2-linux-arm.tar.gz"
        sha256 "39f94bee9f40e5101f25a8d1f8aec8891d42d6bfa59ca178d5e1ea3dc5e44fb9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.10.2-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.10.2-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.10.2-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.10.2-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.10.2-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.10.2-linux-arm" => "mocli"
      end
    end
  end
end
end
