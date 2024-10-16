class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "1.8.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-darwin-arm64.tar.gz"
      sha256 "cbe3bcde52fd445c481b4fc71b556c006a5084f98709c1faffb6735fac38363a"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-darwin-amd64.tar.gz"
      sha256 "6d316aad66cc82c9f9c7a78be4a2eb33030e5e69e4292bc8357f34eee676edcc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-linux-amd64.tar.gz"
        sha256 "4707dc111205d994239c4ecd6219482d604b4b53e9de7794cfb52bdd49fcf2be"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-linux-386.tar.gz"
        sha256 "aa06db7fd74e3a16a73453961c0a5cf84ae5fba4e9804e72a648ccb33d036ad6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-linux-arm64.tar.gz"
        sha256 "0bf0508c82b51285fa864fb83fd7ea94ad52a6222d8899262d7a587182866620"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.8.1/mocli-v1.8.1-linux-arm.tar.gz"
        sha256 "f58d324da5497675ab5de208b5c7dad71d34dfecb9b3d03d562fcc952f392e85"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v1.8.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v1.8.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v1.8.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v1.8.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v1.8.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v1.8.1-linux-arm" => "mocli"
      end
    end
  end
end
end
