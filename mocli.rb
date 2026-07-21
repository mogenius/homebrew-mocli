class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.12.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-darwin-arm64.tar.gz"
      sha256 "d87e51b27bc09f90ef10ee7064afb8d6f1ec4e46aaa8ee80eb5de70276ea086d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-darwin-amd64.tar.gz"
      sha256 "4eb56205933295cd10358520649510795e8a5cbccc77ef18a76c4b1a0628e074"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-linux-amd64.tar.gz"
        sha256 "0e93b5c2e4e297a9cdc7478d2189d94369bee1e8aa6a071a5ad5d53683919d9c"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-linux-386.tar.gz"
        sha256 "d14caf0c386f5e36175e4b39408894857bd524cc0fd9bffdd1d2b54d2d768c62"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-linux-arm64.tar.gz"
        sha256 "799811e4ded33bd62cc8ea9d422c5c4fee747bf453e1ef88886287a21e5a413a"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.12.1/mocli-v1.12.1-linux-arm.tar.gz"
        sha256 "91b879a41a371fc8f5b3bc827d8f054af2929a47f11b67fe0bd7b8896d2c48d8"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.12.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.12.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.12.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.12.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.12.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.12.1-linux-arm" => "mocli"
      end
    end
  end
end
end
