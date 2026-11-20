class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  version "3.0.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-darwin-arm64.tar.gz"
      sha256 "fbb1fb895acc2423cdd4d39b4e93dd3dbe88f86827ee41e2fc1aa88e6c135f8b"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-darwin-amd64.tar.gz"
      sha256 "8387a934adce4866d26d564331c81ca65969d3d17be53d762cb0c298f3537492"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-linux-amd64.tar.gz"
        sha256 "4fb9538e1413d184ef55b3b7001d6c352f6858f6118b32efc88546c89119870c"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-linux-386.tar.gz"
        sha256 "0b59e87f8b4a3bf7c92d8886186fe648fbb080423f23c0dd723747dc6476f597"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-linux-arm64.tar.gz"
        sha256 "254365cedf8a9875d48b302895390e48abaa40b78fed07c15c3ce0dc858958a9"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v3.0.1/mocli-v3.0.1-linux-arm.tar.gz"
        sha256 "b5ab4f98390d76cca5022c73a83e43e35cf6cd44b3b6d225cbf3ec6ad427418c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-v3.0.1-darwin-arm64" => "mocli"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-v3.0.1-darwin-amd64" => "mocli"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-v3.0.1-linux-amd64" => "mocli"
      else
        # Installation steps for Linux 386
        bin.install "mocli-v3.0.1-linux-386" => "mocli"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-v3.0.1-linux-arm64" => "mocli"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-v3.0.1-linux-arm" => "mocli"
      end
    end
  end
end
end
