class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  url "https://github.com/mogenius/homebrew-mocli"
  sha256 "950dce2b0a5180a8683de2a1c149bad8627657f01282c632ab5cb845aa0fc236"
  license "MIT License"

  def install
    bin.install "mocli"
  end
end
