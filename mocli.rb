class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64"
  version "1.0.0"
  sha256 "06395751922f586c10d710b852e48e50c2f8651ae01fa6d2e05bfabea756930a"
  license "MIT"

  def install
    bin.install "c03508450614c0322adce77ca31f085785ffc2cecaae1c034589bb182b14faf8--mocli-1.0.0-darwin-arm64" => "mocli"
  end
end
