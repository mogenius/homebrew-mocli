class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.10.3"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-darwin-arm64.tar.gz"
      sha256 "b0d0aa833be6f421e66d707258fafbde300209dc519155505015658cd450be98"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-darwin-amd64.tar.gz"
      sha256 "a6f386057c96aa17d83dc6d28e74be41be91862fac64b0d4c1946bddac80d6b4"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-linux-amd64.tar.gz"
        sha256 "a549298bf96cc1ba299b5a365fd6583ef57fece369cf275d33c55db256caad61"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-linux-386.tar.gz"
        sha256 "3ce7e1b03ad30de153583c1ad33482eaf486b96a8fdfe8f747b9d65fe6c9f0fa"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-linux-arm64.tar.gz"
        sha256 "bcffd4a2bf835d8170d3581641dc75fd5db68721f7eb17d983d59b222a239212"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.3/mocli-v1.10.3-linux-arm.tar.gz"
        sha256 "3adc3cd60df974d6b8dffe8844cbf147af8ab19b66838861cfb1ffeb65786c76"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.10.3-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.10.3-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.10.3-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.10.3-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.10.3-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.10.3-linux-arm" => "mocli"
      end
    end
  end
end
end
