class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/tree/main/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64"
  version "1.0.0"
  sha256 "3469f9963a24cb48c7086bc51168a07cb04e28cd13db7e387c4b835111c9e1cb"
  license "MIT"

  def install
    bin.install "mocli"
  end
end
