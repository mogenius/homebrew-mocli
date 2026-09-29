class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.17.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-darwin-arm64.tar.gz"
      sha256 "925003c2f01bbdf18a5858ea4da47c68d83812bbf521ff778430c3c4613aafd3"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-darwin-amd64.tar.gz"
      sha256 "abbd764fdcf6b3156114a3543e4dbe5e1259c992e696cf4420f8c7d6bb397891"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-linux-amd64.tar.gz"
        sha256 "a03e859cc45f4d2da216b2cc552571cc37d9c5365eff5dd48681d62ce4edc4fb"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-linux-386.tar.gz"
        sha256 "615262814a067ccbc118e26c94cb2c4cff40f6a63104429fe084c04f2de8363e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-linux-arm64.tar.gz"
        sha256 "67963ef6c1153e125701511299132dc0c38778bfce9b6b879f0e215d4450a4c7"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.17.0/mocli-v1.17.0-linux-arm.tar.gz"
        sha256 "155a70beebd2cff5644ce178953815a56719339139314ffbd9bbf35ddb3401f6"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.17.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.17.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.17.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.17.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.17.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.17.0-linux-arm" => "mocli"
      end
    end
  end
end
end
