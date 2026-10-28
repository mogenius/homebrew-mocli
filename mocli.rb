class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.19.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-darwin-arm64.tar.gz"
      sha256 "51ee4653219d84ba4f9e523e413423baf40c0645b290d1fa94007788d19e843b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-darwin-amd64.tar.gz"
      sha256 "6cfe2ad696b7300557c51016f451e0c3f80e8c85199879315f68f64319d65992"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-linux-amd64.tar.gz"
        sha256 "df93f9dbcd0b380cb19622b10c182f47e23fe4bf1a4f029dc70fcf9af3f731a5"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-linux-386.tar.gz"
        sha256 "6de3776d58d5478126fc5b2bbf496cab8dbe067e6e836f77c6f6665dee21d4f2"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-linux-arm64.tar.gz"
        sha256 "3b89db76bc6f5a0d002ffd28fc073093021ae59e6c2ece6a6897e0a6f094a842"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.19.0/mocli-v1.19.0-linux-arm.tar.gz"
        sha256 "6370a2f8c2c59a3247bf9461e30831a4febfc02cda1986a5ededb8e1c10950f1"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.19.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.19.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.19.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.19.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.19.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.19.0-linux-arm" => "mocli"
      end
    end
  end
end
end
