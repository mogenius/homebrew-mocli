class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.20.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-darwin-arm64.tar.gz"
      sha256 "cddea5543d355c5bef48d273121dd2b1e82f83a2c2a08b3066094430507d93c0"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-darwin-amd64.tar.gz"
      sha256 "61fea644cfcded557d4605fe7163bd02e5d7c52ca99fa01561a73bda0297529e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-linux-amd64.tar.gz"
        sha256 "31b878dbb22d38f6531286292c3b2131a6e018425c441eb572a068ec1fb23c8e"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-linux-386.tar.gz"
        sha256 "051038b54136146df968e028cab14cc5b7f5c1e74d812aeedcd51e9d21fb09df"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-linux-arm64.tar.gz"
        sha256 "a9a039fa7e77ceb0004dafc7124b13c2efb7a237443089059f6e4dea79ef4ec0"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.20.0/mocli-v1.20.0-linux-arm.tar.gz"
        sha256 "4868755ece2848363ab891057d80c68983d5800f016f5755a16dc10ac2cba593"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.20.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.20.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.20.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.20.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.20.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.20.0-linux-arm" => "mocli"
      end
    end
  end
end
end
