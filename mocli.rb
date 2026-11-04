class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "2.0.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-darwin-arm64.tar.gz"
      sha256 "3afaa5158ab7638d30cc420ece689bb9a75c609c19a26f78bc92d0029a9378ae"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-darwin-amd64.tar.gz"
      sha256 "f313d0176fd5a30a981c3e59742a99bcc3f825f0ab819cce4dcbbbe2aa04cbf1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-linux-amd64.tar.gz"
        sha256 "576cf013330afc58c6f482416f6b428d0be0b2f5317d8ee435f63f0cd1961046"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-linux-386.tar.gz"
        sha256 "09ff23e2bab4d4c37c1f8ea585d6c1ff0dec9021eeef9fa7b3b287c5f1eb1145"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-linux-arm64.tar.gz"
        sha256 "64266892377ea8cf9b143fdf420f963a7553440f97f5738ef10a3bb3b6c567b3"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v2.0.0/mocli-v2.0.0-linux-arm.tar.gz"
        sha256 "060bca07d38b60646735bcfdbdfdf9e0b9c6af6eb4ebae1644d3fada8d42088e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v2.0.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v2.0.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v2.0.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v2.0.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v2.0.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v2.0.0-linux-arm" => "mocli"
      end
    end
  end
end
end
