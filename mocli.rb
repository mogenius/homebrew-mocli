class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.9.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-darwin-arm64.tar.gz"
      sha256 "cecb9bb7f01096d3e875d950785e832e828f4144c62c8e512fbc5286125d36cf"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-darwin-amd64.tar.gz"
      sha256 "e361c4220314017605ddec2096cc327f1b200c386c06fce35aada3ea737d787c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-linux-amd64.tar.gz"
        sha256 "a7c77e0edd82df07584f91624a0eeebc25a829a89901272716fa5ed803ad3190"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-linux-386.tar.gz"
        sha256 "ac13d2af1647646bb8bae9adf93c87d1754a7e6d9b8966df0fb1c0ca68aaf71c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-linux-arm64.tar.gz"
        sha256 "a342e1d91e1c32cb04889494dee9e336fb442dc75b50d0aa3ed103c416656341"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.9.0/mocli-v1.9.0-linux-arm.tar.gz"
        sha256 "285e4bc714b4ef8cfb5de97aa846cdeea3194bcf60fe1c38cd8262e4ee242810"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.9.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.9.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.9.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.9.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.9.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.9.0-linux-arm" => "mocli"
      end
    end
  end
end
end
