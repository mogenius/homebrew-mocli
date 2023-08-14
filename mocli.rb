class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/tree/main/releases/download/v1.0.0/c03508450614c0322adce77ca31f085785ffc2cecaae1c034589bb182b14faf8--mocli-1.0.0-darwin-arm64"
  version "1.0.0"
  sha256 "c03508450614c0322adce77ca31f085785ffc2cecaae1c034589bb182b14faf8"
  license "MIT"

  def install
    bin.install "mocli"
  end
end
