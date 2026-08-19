class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.13.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-darwin-arm64.tar.gz"
      sha256 "01b0b7aca180fe3f1a64aa6b295621a1e9e36a7e32a2b4150442c7eb5f392a0e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-darwin-amd64.tar.gz"
      sha256 "b652a6c2f3d3cb3ec6b0404a05ed4b3cd3708f06157012d9155796825eb5e6ed"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-linux-amd64.tar.gz"
        sha256 "d7224181e2d4aafa68156d9c867dd653dca077758e90932b0aa8327d914e9aef"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-linux-386.tar.gz"
        sha256 "157d672878db6163339ceb95735498fb9e6f7e3564f652f1adc5435be8bd79a4"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-linux-arm64.tar.gz"
        sha256 "7171ce3cdeae65c0a9a2e7fd72437235f4fce7744804c938002b2bbe7124fdfc"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.2/mocli-v1.13.2-linux-arm.tar.gz"
        sha256 "42313ce1ea1f72abb8596908f219ae1e3ed231311d2399f1263092a30bbcc882"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.13.2-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.13.2-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.13.2-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.13.2-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.13.2-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.13.2-linux-arm" => "mocli"
      end
    end
  end
end
end
