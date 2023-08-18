class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-darwin-arm64.tar.gz"
      sha256 "c4edc3aada5cf1161fd891b41cf52c30fc4f16f4eb6799281648507f918da74a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-darwin-amd64.tar.gz"
      sha256 "b32b6fe7d398c7c7ea7b26f9bd9835f8a903ce21ab0554746d8dcd363d0a8c6b"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-linux-amd64.tar.gz"
        sha256 "092fe44b959a655a373baf4ab3996b328e010a7471e545feb69d31707261a496"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-linux-386.tar.gz"
        sha256 "3809b0400b2ececc3c998023ab8c1f8bb3622428945d044c50158e279bad1a3c"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-linux-arm64.tar.gz"
        sha256 "b958ad77f08a14ee4fd517cdaff1f8278a1b8980b8c00256ddad139cc670d970"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.5/mocli-1.2.5-linux-arm.tar.gz"
        sha256 "fadd0800193ec5bf2c55a307ee291f1b9a16ab6b6c6f3135232effcbffc5aaa5"
      end
    end
  end
  
  version "1.2.5"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-1.2.5-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-1.2.5-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-1.2.5-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-1.2.5-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-1.2.5-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-1.2.5-linux-arm" => "mocli"
      end
    end
  end
end
end
