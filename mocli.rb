class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.14.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-darwin-arm64.tar.gz"
      sha256 "e7018f8d80aefab558679b576f7fd23877c9ccab3a913f93851d01730a2151eb"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-darwin-amd64.tar.gz"
      sha256 "74983f4a1b0575f8f79523db6b07ed840a3b01355d6321cd70d034fdf5de1700"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-linux-amd64.tar.gz"
        sha256 "e3a2378109adf0e82b0ef33c85be5157ab0b5aeea71b3f4158cd805fa5f5b76f"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-linux-386.tar.gz"
        sha256 "842089a1a89c4f1a82a7b1f4c1054a17a3d49469979473ced3fedc217b4b0a9b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-linux-arm64.tar.gz"
        sha256 "ce1ea1ca362c2cf3eeaf3472e6a319f70b91671c8d77e91939f57c0db1970009"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.14.0/mocli-v1.14.0-linux-arm.tar.gz"
        sha256 "459f7696dfe7655339cd821fd9b8bb873fa19870f77f9095dfd58de83c89338c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.14.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.14.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.14.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.14.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.14.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.14.0-linux-arm" => "mocli"
      end
    end
  end
end
end
