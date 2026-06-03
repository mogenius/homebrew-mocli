class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.10.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-darwin-arm64.tar.gz"
      sha256 "831c9df3e591bb2a8f7515732cfc420bff5b7cb826c72ddbf098e9c6b1cffda0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-darwin-amd64.tar.gz"
      sha256 "2e92dbcccbb30d94dba2dcd73b7dbae3fcca4bf678d1bccf0a77d65163ebc564"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-linux-amd64.tar.gz"
        sha256 "ed7ccb7021572f0efacf7ca62ce663a0312770b028cfeeb75cc58a158a1476e4"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-linux-386.tar.gz"
        sha256 "7f1ffc9ba17ba776b450219edc7a8946af8272bc50a9f46bfe5f822a522873c5"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-linux-arm64.tar.gz"
        sha256 "a6be210de1364958628822948d3b017197b09b5d71edc8d7fbcb0c572e90bb9b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.1/mocli-v1.10.1-linux-arm.tar.gz"
        sha256 "2f29d056d4cbe5e0525fd9be0251ed77cc66bc9e0f23b7b189040ce83427ba10"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.10.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.10.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.10.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.10.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.10.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.10.1-linux-arm" => "mocli"
      end
    end
  end
end
end
