class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.10.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-darwin-arm64.tar.gz"
      sha256 "a4a4c1b9c9a7faef3e357a0666d9168cee11ab24f89529fc2e1378375c9aab85"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-darwin-amd64.tar.gz"
      sha256 "6c8012812306c379ea1599fef61d60f0fbb09e8e5bdb8d083e010a132971432c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-linux-amd64.tar.gz"
        sha256 "51e4edd50559a7d8818ef9b9fd2a78b6b40329680c5f8054500efe26a57f0df7"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-linux-386.tar.gz"
        sha256 "6d537eb9518fa21c863df70d603bde32b98e26b233e81bc2227aac5117978d0e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-linux-arm64.tar.gz"
        sha256 "9f00e538b2b6a9ad57395b2e070178b4982cf03a902ccbac9665e2a2142afa20"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.10.0/mocli-v1.10.0-linux-arm.tar.gz"
        sha256 "10d0630c2c835cd3bc67ef0921d18698c8fe02853177235e5c546b29bb54053b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.10.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.10.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.10.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.10.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.10.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.10.0-linux-arm" => "mocli"
      end
    end
  end
end
end
