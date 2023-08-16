class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-darwin-arm64.tar.gz"
      sha256 "cdd213a4a7900cfe8cec4111fdd89ebc0ae8044a4c00418a98f5c6ed90e0b592"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-darwin-amd64.tar.gz"
      sha256 "c52918e7e5944b47bfdfc33052f08268f5a4676280649f21bbc2a2bc0a31674e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-linux-amd64.tar.gz"
        sha256 "ed3caef8df583be6dffbe24a491c67d622fa4575d2290684d37e66ea8397f2ed"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-linux-386.tar.gz"
        sha256 "5df801dae3586122b678817a4f33ca02b2486758d1090a1e4d1f2786a038f532"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-linux-arm64.tar.gz"
        sha256 "9b0de7f60bebc1418e090a8bb439b9a17ad171688522cc66b971614db7ec6378"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.1.5/mocli-1.1.5-linux-arm.tar.gz"
        sha256 "993aae157dbf07002fe91be3c3f9386ea433e4c9f4ec50b59777defc13356cff"
      end
    end
  end
  
  version "1.1.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.1.5-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.1.5-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.1.5-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.1.5-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.1.5-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.1.5-linux-arm" => "mocli"
      end
    end
  end
end
end
