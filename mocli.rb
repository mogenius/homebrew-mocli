class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "0fbb98c99cf59b52076d1d133193aba7c6fc34bc6e67eef9243cf18318ea9fc6"
  license "MIT"

  def install
    bin.install "mocli-1.0.0-darwin-arm64" => "mocli"
  end
end
