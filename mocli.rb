class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-darwin-arm64.tar.gz"
      sha256 "c20d58a97f92d9ceac8bef6fbb61e10ca40881e45efe903163877a93b47851d4"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-darwin-amd64.tar.gz"
      sha256 "ce22fded3ae3a70fb4ee9e60583ab53612a5fa677af11ed9b16ed1c0ab2a860e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-linux-amd64.tar.gz"
        sha256 "a7dab3d704779ba9aa862f3976c118adaba02dc88bf5ca26c67e72a999783eb7"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-linux-386.tar.gz"
        sha256 "8b1ea913cefe57621ceb002918d12b65861fb6baf1bb11341c1f91854ef8a4a7"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-linux-arm64.tar.gz"
        sha256 "9419ec15596e4a122c9a552f5d4ca58a3a0051fdac6faeba15bea3e990b6c52b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.13/mocli-v1.2.13-linux-arm.tar.gz"
        sha256 "50b4801c0cf054c93883ec9fa2a4229edf21023a48b6e34cfdf62b76d1ea4d49"
      end
    end
  end
  
  version "1.2.13"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.2.13-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.2.13-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.2.13-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.2.13-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.2.13-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.2.13-linux-arm" => "mocli"
      end
    end
  end
end
end
