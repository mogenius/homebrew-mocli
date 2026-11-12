class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "3.0.0"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-darwin-arm64.tar.gz"
      sha256 "d7fbeea3f0d1b32090b7cfb0fbe1c4f09361936287fea4fa5b9bc29b201597ca"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-darwin-amd64.tar.gz"
      sha256 "ba8447629aa679cd29068631831db60208ab4f6123faa6f315755ee4b53f33bf"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-linux-amd64.tar.gz"
        sha256 "db953798a4036a3f91c652e8e5c69e4dd26658929adf79a1a8ba2c35a58ce3bc"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-linux-386.tar.gz"
        sha256 "836593834fcfc6da3075f1bfbe63f7946bd127ce8e231abb014501e293c73472"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-linux-arm64.tar.gz"
        sha256 "4cdff2849453c8495c9418936867512703b6c7da49b8b9222f57249ade885124"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.0/mocli-v3.0.0-linux-arm.tar.gz"
        sha256 "fbaa5f2b9905fbd8935ceb394a46b7fd9d11c06dab7afdd3c1b15cf9b187e976"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v3.0.0-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v3.0.0-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v3.0.0-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v3.0.0-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v3.0.0-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v3.0.0-linux-arm" => "mocli"
      end
    end
  end
end
end
