class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-darwin-arm64.tar.gz"
      sha256 "bca0dcaafc9916f3f8c49fbc43d5fd99b00edc06205bcad70d354e0f54bd5827"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-darwin-amd64.tar.gz"
      sha256 "e79b1eba078302736e8ee33a2cc33eabdbcc5187f29d35602920c7e0738f563c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-linux-amd64.tar.gz"
        sha256 "8e25781b912cea6042317032ed29232f7c05c4394d9663a37e8f6e5240ed76a5"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-linux-386.tar.gz"
        sha256 "7451c37e505cdb09408282a03da38f37eefc34f23396949ce33b6d21e829f027"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-linux-arm64.tar.gz"
        sha256 "e56d87204600d5fda0a178c72ae4cb7ec70e54e19cc05f5ab806214593fad59b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.7/mocli-1.2.7-linux-arm.tar.gz"
        sha256 "802335d5e03f5b1723adfb96b23e156d856e1bc2573913500dd80e4ff9085ab6"
      end
    end
  end
  
  version "1.2.7"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.7-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.7-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.7-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.7-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.7-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.7-linux-arm" => "mocli"
      end
    end
  end
end
end
