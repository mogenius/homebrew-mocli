class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.15.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-darwin-arm64.tar.gz"
      sha256 "1c68bde8c223b3b8f59a8c189e878765e9c74bbf59db4aef8634ff8a1c89c17c"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-darwin-amd64.tar.gz"
      sha256 "161f690af211953c30332c82a06a968c9e387f20fac2b13c81cfaa583b7b09b5"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-linux-amd64.tar.gz"
        sha256 "b01df7f2c28cd766566c3995c2b2a7fcf431c9487faf2e7ce2c9a6fe20837d93"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-linux-386.tar.gz"
        sha256 "45549c15189c0d2648d6da8f5fa124c33c28568f6f198f198dc1aaf603c64d78"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-linux-arm64.tar.gz"
        sha256 "cce990e9f30d0552b22e9ad76518b08f5d56300e6dc3cc62cb3bdcd713dc7aa6"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.15.0/mocli-v1.15.0-linux-arm.tar.gz"
        sha256 "ebb41ce38026ac5048ae6bdd13a73843cb8e9871777914e1eed6d4ad63a04f06"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.15.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.15.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.15.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.15.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.15.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.15.0-linux-arm" => "mocli"
      end
    end
  end
end
end
