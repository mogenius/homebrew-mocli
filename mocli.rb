class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.8.4"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-darwin-arm64.tar.gz"
      sha256 "f5a6da2f81c378c7df2dfe7803cc49b9cb82b54ac1b3a3ad5274d4d05bf79c47"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-darwin-amd64.tar.gz"
      sha256 "45f70efbefbfe6a620e4f729dd5861f92aae6730fe7000653ac4ed2e2929db9f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-linux-amd64.tar.gz"
        sha256 "6924c748ccb8c7f719b7e68b25a251944051bc3e4ee7eccf41caf29e3cb3eb03"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-linux-386.tar.gz"
        sha256 "b3372a9bf2a49f608531b39968b32da511e07227869b81f7b384b9aaedd61fa4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-linux-arm64.tar.gz"
        sha256 "e873f5794338bc15f7f1669e080a00833b7ac98d72aa31103ca3f8609a50bdd7"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.4/mocli-v1.8.4-linux-arm.tar.gz"
        sha256 "05d3b5cd0dde7365632f0e2f0d1d430e678902133d6c52a4610d105a43ace2cd"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.8.4-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.8.4-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.8.4-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.8.4-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.8.4-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.8.4-linux-arm" => "mocli"
      end
    end
  end
end
end
