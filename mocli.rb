class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli/releases/download/v1.0.0/mocli-1.0.0-darwin-arm64"
  sha256 "950dce2b0a5180a8683de2a1c149bad8627657f01282c632ab5cb845aa0fc236"
  license "MIT License"
  version "1.0.0"

  def install
    bin.install "mocli"
  end
end
