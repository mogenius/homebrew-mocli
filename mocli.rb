class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.13.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-darwin-arm64.tar.gz"
      sha256 "cfeed7a545bcb4a301ba963913f7466306a1e4a8c4d38f58db812e0d79ebd4e7"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-darwin-amd64.tar.gz"
      sha256 "4f3d1923cb92b56e6ea2df7243624277f85f7505c92da0edab49e3857115bed1"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-linux-amd64.tar.gz"
        sha256 "d5a48b8a3eeabc5645172e44d608c298f2120ef25f8d26d14a0d2413586f4230"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-linux-386.tar.gz"
        sha256 "c7c0c88a82dc7a77e1660a52cbbd0dcb4d25ed784e3f6d20ccd69c7d65bb1289"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-linux-arm64.tar.gz"
        sha256 "f193d399fa86471a1401789ef06ed0c01cdfdc110408e7f2d0bfa9bfed57d45f"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.13.1/mocli-v1.13.1-linux-arm.tar.gz"
        sha256 "634754360d172f783ac1119ea99155a542b02e17f952f32498b9bb3a82e278d6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.13.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.13.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.13.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.13.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.13.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.13.1-linux-arm" => "mocli"
      end
    end
  end
end
end
