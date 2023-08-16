class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-darwin-arm64.tar.gz"
      sha256 "894d67ce3818d872e5a100d3123f9451aa928847c25c9ec30d526be712f59019"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-darwin-amd64.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-linux-amd64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-linux-386.tar.gz"
        sha256 ""
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-linux-arm64.tar.gz"
        sha256 ""
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.4/mocli-1.1.4-linux-arm.tar.gz"
        sha256 ""
      end
    end
  end
  
  version "1.1.4"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.1.4-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.1.4-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.1.4-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.1.4-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.1.4-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.1.4-linux-arm" => "mocli"
      end
    end
  end
end
