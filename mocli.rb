class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64.tar.gz"
  version "1.0.0"
  sha256 "69f5914386065c1252dbb241085c604ee288c5b7688be8fbb45915741c938ada"
  license "MIT"

  def install
    bin.install "mocli-1.0.0-darwin-arm64" => "mocli"
  end
end
