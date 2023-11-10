class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.6.8"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-darwin-arm64.tar.gz"
      sha256 "6877adc481169a913bc059dd60dba6d0b213bd401a556395e43357747b77870f"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-darwin-amd64.tar.gz"
      sha256 "50e59fefc99c097e8853f6ff0a2d27b731f337c759ef2fdecb83de7451283b8c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-linux-amd64.tar.gz"
        sha256 "18988a14ec5da66559de9be26925f286a8aef8bb80bd4b6c99dd542ea51abd72"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-linux-386.tar.gz"
        sha256 "bd667020e0652ed9468917f1f5765089098a3b7c32ace09c471a384810dbd05d"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-linux-arm64.tar.gz"
        sha256 "aa65e35451aec53fbab31f520e521a0000eaea63e4f39e00c0b3972fd19fe0e6"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.6.8/mocli-v1.6.8-linux-arm.tar.gz"
        sha256 "085bfb02fb0e14eb617cc5459223e99e38bbd0a23e78ac4ff8d0c622184e6336"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.6.8-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.6.8-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.6.8-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.6.8-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.6.8-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.6.8-linux-arm" => "mocli"
      end
    end
  end
end
end
