class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "3.0.2"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-darwin-arm64.tar.gz"
      sha256 "14d49afd47c2415a1a05a04d4e981dcfe3a68c3c70988eeebbd27c5b03d8417d"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-darwin-amd64.tar.gz"
      sha256 "08d614a7fdcf73d9be60d592860707d7eda9a9f3dbd65d509a21d11358ea5109"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-linux-amd64.tar.gz"
        sha256 "cc28fbe373ba2f0b3548ba6d8ac16ec2d96ca0a943750aa86d3a0a8fc58a5947"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-linux-386.tar.gz"
        sha256 "14eb7c60261c80b7fad4aeabf458cb842130dd4d8242436530b4db2b9576a02d"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-linux-arm64.tar.gz"
        sha256 "58fdd84804c08ea3319105e589aa3423d82e88f7cba9fabd851c4863f23385d8"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.2/mocli-v3.0.2-linux-arm.tar.gz"
        sha256 "5efd3a48299ea85359fee53aa5389680a69176227417acd1e3cc02d9d7de5312"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v3.0.2-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v3.0.2-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v3.0.2-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v3.0.2-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v3.0.2-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v3.0.2-linux-arm" => "mocli"
      end
    end
  end
end
end
