class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-darwin-arm64.tar.gz"
      sha256 "7b1c2780394d5e8a8bdf40fc818ecf06933e88fb321de5f4d6c84d477c337e8e"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-darwin-amd64.tar.gz"
      sha256 "bc6ef66ae2dd4eceac294a8099ab059b97492baa2971b2ba8c091b3844787940"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-linux-amd64.tar.gz"
        sha256 "4513bdd2179e9b63be65fdecdcaa96cc5634939766a243fd331dd010d87db778"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-linux-386.tar.gz"
        sha256 "5e4df28bd1077439798c222ba0de519a7c7599517aaf4e93fde5f5b8e971d2bf"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-linux-arm64.tar.gz"
        sha256 "e343b55d632c94281a24959ada0f41d51dc65c1042fc6bc77bf5dbf15c5a31d4"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.6/mocli-1.2.6-linux-arm.tar.gz"
        sha256 "e0e78d36e5444a5d7050cd53b759110055f01ee21ba678f8771dc24c0f3ab865"
      end
    end
  end
  
  version "1.2.6"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.6-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.6-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.6-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.6-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.6-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.6-linux-arm" => "mocli"
      end
    end
  end
end
end
