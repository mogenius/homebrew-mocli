class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.8.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-darwin-arm64.tar.gz"
      sha256 "5c7e03170647cf74a525123c15729da4f58c73c80647d8937ba378447ef0a5e2"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-darwin-amd64.tar.gz"
      sha256 "8f1b63d215118883f106d2007cb71f2339b9ae11576a622246a3fcf7c21ee6f8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-linux-amd64.tar.gz"
        sha256 "7ac43cd996e5a623931c130a8de28a89251a16da2dddc6e67a5b455ba9edd5f2"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-linux-386.tar.gz"
        sha256 "abce192d2dbf40b47c76137a33c04359f74f43599b5a9099082fea12e2847c4f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-linux-arm64.tar.gz"
        sha256 "cd320978b2b2a802538fd62c8395a082c665e44d10a6f6f1f7e680e84da70330"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.2/mocli-v1.8.2-linux-arm.tar.gz"
        sha256 "4748620a3244146936ff44bfa01f87c22201283bc652be159cb11b4788188d41"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.8.2-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.8.2-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.8.2-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.8.2-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.8.2-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.8.2-linux-arm" => "mocli"
      end
    end
  end
end
end
