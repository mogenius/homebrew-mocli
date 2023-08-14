class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "552d0d4a6ed25bffc26d19793d90d2945d6942e5c815cb86f9eaa922899ca77d"
  license "MIT"

  def install
    bin.install "mocli-1.0.0-darwin-arm64" => "mocli"
  end
end
