class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.11.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-darwin-arm64.tar.gz"
      sha256 "31ef3dc5858dfb324f8c4a4c6c07e2ab3b9f1ba1e5db63be4880913eed5d8fdf"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-darwin-amd64.tar.gz"
      sha256 "17f9e246659fb4080ba0b903ee1be824615442d2bbb59a941f60abaaf7278a82"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-linux-amd64.tar.gz"
        sha256 "8f5d9262dae6f7f713ec81900531d7cfc53bf48a625087cf6efe60983f61e615"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-linux-386.tar.gz"
        sha256 "248c430144bc574fcda33b04e4b42fa657c07cc7d5e47b2ecbcc46f0703fa654"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-linux-arm64.tar.gz"
        sha256 "48d680165b8b62c471a7df843306ba77b17244b1bb44cdb50a186cd01591180c"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.11.0/mocli-v1.11.0-linux-arm.tar.gz"
        sha256 "48efa8ee842fbe86c5fb8d7155280237ac2da310cb6d17c4d57271c31456b207"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.11.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.11.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.11.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.11.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.11.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.11.0-linux-arm" => "mocli"
      end
    end
  end
end
end
