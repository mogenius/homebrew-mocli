class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.9.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-darwin-arm64.tar.gz"
      sha256 "ade80de38f4bc87366d6b5d19d2e45691a429077f74d48ff9d19e3a180b60324"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-darwin-amd64.tar.gz"
      sha256 "7540493e99e7a88c997ff4ba563f68f79b3e3dbff833c8054dd0b46b8a7dd720"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-linux-amd64.tar.gz"
        sha256 "db0758820e4079df00d2aa9f7fca10e8c53f582c62f264f6f9c64f2a68371162"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-linux-386.tar.gz"
        sha256 "ffa1495e49dd9b69f9fc41d8f8be91d6a785e3bb5b49f34db158bd4c547428c8"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-linux-arm64.tar.gz"
        sha256 "483741f5bbb056a354bbe112ece9506dd5aa47836f18046683677f4676db275d"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.1/mocli-v1.9.1-linux-arm.tar.gz"
        sha256 "5e81ec14c8f08b65910413dc7a3023c72b63225bc86328e93966f7a873c7a26d"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.9.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.9.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.9.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.9.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.9.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.9.1-linux-arm" => "mocli"
      end
    end
  end
end
end
