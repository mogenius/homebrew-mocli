class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.18.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-darwin-arm64.tar.gz"
      sha256 "a13d7bdaa54c48410818e78cc234c97407b7ef0837e4c0505a54df8192035659"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-darwin-amd64.tar.gz"
      sha256 "6762ed12cdb527c6ed0e4242367fb4086d6fd0d281f72cc9095d569f66b599f3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-linux-amd64.tar.gz"
        sha256 "78db27956ebf2195de4ba3d9d1ceba6b4b61e5583c2317f1554be8cbb8681c09"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-linux-386.tar.gz"
        sha256 "08faef0f411eb49aacac4320d4dff0af2d922359f2130322b8c31eb84050febf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-linux-arm64.tar.gz"
        sha256 "400e1880b747a63b8012137111f58c9ad6ccb71420dc08fa8be708e1f6d2d6f1"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.18.0/mocli-v1.18.0-linux-arm.tar.gz"
        sha256 "0e6a56b86ed6b32158ffda0912adc8bf516092787514717cdc18c175dfc0e02a"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.18.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.18.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.18.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.18.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.18.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.18.0-linux-arm" => "mocli"
      end
    end
  end
end
end
