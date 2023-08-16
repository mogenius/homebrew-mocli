#!/bin/bash

# Download and calculate SHA-256 for each platform
for platform in "${!platforms[@]}"; do
    SHA256=$(sha256sum "${TEMP_FILE}" | awk '{print $1}')
    platforms[$platform]=$SHA256
    rm "${TEMP_FILE}"
done

# Generate formula from template with replacements
cat <<EOF > mocli.rb
class Mocli < Formula
  desc "View your mogenius account in style from your CLI environment!"
  homepage "https://www.mogenius.com"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-darwin_arm64.tar.gz"
      sha256 "${platforms[darwin_arm64]}"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-darwin_amd64.tar.gz"
      sha256 "${platforms[darwin_amd64]}"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-linux_amd64.tar.gz"
        sha256 "${platforms[linux_amd64]}"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-linux_386.tar.gz"
        sha256 "${platforms[linux_386]}"
      end
    elif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-linux_arm64.tar.gz"
        sha256 "${platforms[linux_arm64]}"
      else
        url "https://github.com/mogenius/homebrew-mocli/releases/download/v${VERSION}/mocli-${VERSION}-linux_arm.tar.gz"
        sha256 "${platforms[linux_arm]}"
      end
    end
  end
  
  version "${VERSION}"
  license "MIT"

  def install
    # Installation would need to be handled differently based on downloaded binary.
    # The below is a simplified example.
    bin.install "mocli-${VERSION}" => "mocli"
  end
end
EOF
