class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-darwin-arm64.tar.gz"
      sha256 "0597915ce1328cb9fe9e515b4ef5671da88d292d01bcffe227502dcd9ee675f4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-darwin-amd64.tar.gz"
      sha256 "a0aabed71af288d65b5f1017d7a82eb04ff917789c358967944887fa9c0b50cd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-linux-amd64.tar.gz"
        sha256 "5e238e7f5474b1f7410c8c090752b808cbe1d3f5654120fdef22762b067bb2f9"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-linux-386.tar.gz"
        sha256 "2c488129e8ddfd359fae3ff7c3e5d7c66d3c619aa47cbce1ec3edd66a26815d5"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-linux-arm64.tar.gz"
        sha256 "6040383d11c5826df877a4f5e91357f48c57d132e839d4dcc265b4880dd2714f"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.15/mocli-v1.2.15-linux-arm.tar.gz"
        sha256 "22c6c22f3256cff359be118fde675407526e2f30a82dec8e23995ceb8bd68ffe"
      end
    end
  end
  
  version "1.2.15"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.2.15-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.2.15-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.2.15-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.2.15-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.2.15-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.2.15-linux-arm" => "mocli"
      end
    end
  end
end
end
