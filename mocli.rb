class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-darwin-arm64.tar.gz"
      sha256 "f56031f3a477f0a3cd38d4f29c7738a0a497914c63c31b1fcefbe57b7b126e1c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-darwin-amd64.tar.gz"
      sha256 "bda0d04111451f14f686dee98561ce45774df3abdf0288586a59b219502c7f86"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-linux-amd64.tar.gz"
        sha256 "f75d2d5b7164505eb2b515f39025374e0d42a31bf7e41622d6041cc92014103e"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-linux-386.tar.gz"
        sha256 "642892dd21d6a0066f1b7a13d44e5b222bf8d233d83808e7ffc2cbc07ba04405"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-linux-arm64.tar.gz"
        sha256 "3d7de379c85a98c7e211edca8d00310b64eac8d0c8499de14dd24648d25b765f"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.6/mocli-1.1.6-linux-arm.tar.gz"
        sha256 "7368d4ecddd8b150f2d294165789941d215b5c3d27a857521d9e653217d23fab"
      end
    end
  end
  
  version "1.1.6"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.1.6-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.1.6-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.1.6-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.1.6-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.1.6-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.1.6-linux-arm" => "mocli"
      end
    end
  end
end
end
