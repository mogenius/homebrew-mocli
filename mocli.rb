class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.8.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-darwin-arm64.tar.gz"
      sha256 "fa3949c4b8beb7b2eccd0ec97abbf18a5030b3480d06a8117de2ca9547cfd360"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-darwin-amd64.tar.gz"
      sha256 "f5ddcd7c4f9e6907368a9c290bd1fbe6b8864ade5e3703c325d1fa8c070a1f14"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-linux-amd64.tar.gz"
        sha256 "af03056931f3aa5d839b341863ab660187af727a6ba42589d4a0fa346ce36827"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-linux-386.tar.gz"
        sha256 "61cf3f9e721eecaff5c6c36f5496e0ac496049003a164ba207313ff52d2441cb"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-linux-arm64.tar.gz"
        sha256 "31b757c2ea2e4e944ef7efe4a92b7030dbe1cf014f819e8e8cab2becec0e147f"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.0/mocli-v1.8.0-linux-arm.tar.gz"
        sha256 "2e97f95523fde1b52c82d9fc96ab5c884688a16cfb50428b9e91866db00b3f18"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.8.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.8.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.8.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.8.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.8.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.8.0-linux-arm" => "mocli"
      end
    end
  end
end
end
