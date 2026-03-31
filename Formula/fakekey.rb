class Fakekey < Formula
  desc "API Key Proxy Agent - manage and replace API keys via network proxy"
  homepage "https://github.com/happyvibing/fakekey"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-arm64.tar.gz"
      sha256 "36120231c3a0b24c30022c5ddc6922f76234bc08a6e815b7a944bc2c9c4f83c6"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-amd64.tar.gz"
      sha256 "b88fefb79e35a5e38823f946cf8bbaee01226373e261fd223657cfbed884d0e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-arm64.tar.gz"
      sha256 "29fa30f7a73029e6b274839e2af81db30e0ef920866c77a1c30f40bb731b7d34"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-amd64.tar.gz"
      sha256 "45a3cf1e2354459da89589cb11956ad5f5958429d4012aa3b0544fa6494b95a5"
    end
  end

  def install
    bin.install "fakekey"
  end

  test do
    system "#{bin}/fakekey", "--version"
  end
end
