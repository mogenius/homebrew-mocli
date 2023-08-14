class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "995d542631782b1a54adf146306e8b13c96d614ee5e0546b6c5048377d843209"
  license "MIT"

  def install
    bin.install "mocli-1.0.0-darwin-arm64" => "mocli"
  end
end
