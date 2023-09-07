class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-darwin-arm64.tar.gz"
      sha256 "f99ce621b870272616b1758c823bfda3be2d4aca7a678333c428769848c78a72"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-darwin-amd64.tar.gz"
      sha256 "69167466032d2cd72f8bcbe47a3b11bd52f4f9478f8a980bf3b1c074bdefb91c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-linux-amd64.tar.gz"
        sha256 "159f47b961b2319ccc8d376960bf4ab8770eac86701cad4a2ad58ab91acc3b4b"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-linux-386.tar.gz"
        sha256 "3e027395184fea664b60999f050c68f3ca7ffd8154c239f7c2bbd0f8449bc5f8"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-linux-arm64.tar.gz"
        sha256 "481060926cf5d919652f927f757daaff40762cb3b3bb3b91a614971d5cecf877"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.2.14/mocli-v1.2.14-linux-arm.tar.gz"
        sha256 "586a8fc539455d8876b8573016a6917a77853589b15a4338c93ab7302e49569e"
      end
    end
  end
  
  version "1.2.14"
  license "MIT"

  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.2.14-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.2.14-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.2.14-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.2.14-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.2.14-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.2.14-linux-arm" => "mocli"
      end
    end
  end
end
end
