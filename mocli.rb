class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.8.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-darwin-arm64.tar.gz"
      sha256 "dcdb1a8293f90e9c310471c18f2a8d8ed41782db9347987060e573718b307876"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-darwin-amd64.tar.gz"
      sha256 "044cadfc0af29a2442ba6fa794c23535654bef65fcc3eb4848245bb3de850a5b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-linux-amd64.tar.gz"
        sha256 "b9b38bf755313159dd9a26a7e507a3ccae8cd1acd4c9dd91da01a55b5d44f893"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-linux-386.tar.gz"
        sha256 "db2b779e2fe81a70f252a3d6935b7763dea80422c4d27b532bb5192cdbb8f2cf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-linux-arm64.tar.gz"
        sha256 "792a9373087ac25637004b1e560a9969dbcfe313c67c853e9abf075d1cf2ffc4"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.3/mocli-v1.8.3-linux-arm.tar.gz"
        sha256 "6fcfff40fb6d56b0242ead1634e76014085efbbc16600bfcecf1302c2ee49a0f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.8.3-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.8.3-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.8.3-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.8.3-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.8.3-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.8.3-linux-arm" => "mocli"
      end
    end
  end
end
end
