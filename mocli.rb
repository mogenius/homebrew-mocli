class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.7.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-darwin-arm64.tar.gz"
      sha256 "694750111514e5a6ac56f61bd26ee31391f574eed46c3b98b27d7628aeee1cc8"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-darwin-amd64.tar.gz"
      sha256 "ece024245c02387e0b3f6ef595a39588357dc0b2e0c14e93c8b1863b539032a9"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-linux-amd64.tar.gz"
        sha256 "68aed26b9ff916cc835ad5f79daa94fbb8733b6e55bd8da3218414390b10bca4"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-linux-386.tar.gz"
        sha256 "40af9733fc5f901c1fe2c9f42c1cf4850c046d96ce540f328c5746245a1e74d3"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-linux-arm64.tar.gz"
        sha256 "57206503a8175a47ad5f8f09cf198ae3eb0f86bf6eab43fc748346846fda93a1"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.7.7/mocli-v1.7.7-linux-arm.tar.gz"
        sha256 "cb01cfb0e16cc0f10524a0f34a04d8631da5a0e9777fc69b3e0a5581d61266d0"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.7.7-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.7.7-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.7.7-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.7.7-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.7.7-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.7.7-linux-arm" => "mocli"
      end
    end
  end
end
end
