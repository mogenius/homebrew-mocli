class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/tree/main/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64"
  version "1.0.0"
  sha256 "0aaeacfc45a9183dee2f317a5674b866aacf2e206824f2dee7d717e2d99b3f46"
  license "MIT"

  def install
    bin.install "mocli"
  end
end
