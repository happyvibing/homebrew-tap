class Fakekey < Formula
  desc "API Key Proxy Agent - manage and replace API keys via network proxy"
  homepage "https://github.com/happyvibing/fakekey"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-arm64.tar.gz"
      sha256 "bc2ab62736232f3d77ee4f876135d88a9c39a4bf346ff84c3e00028e933f1051"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-amd64.tar.gz"
      sha256 "8c8b6e0539d8fd4368546bd0d97f0d6068950a2d56ef4916f7d57fc51868567d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-arm64.tar.gz"
      sha256 "ef7d054ebe2e3da671429f83450cecf5b3a0ef6c2a0741f2cb2c1421a7c891f7"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-amd64.tar.gz"
      sha256 "3341cccff3a4f182b0a60e05f0d763d29445df621f3f41ffdc811123f8f885b6"
    end
  end

  def install
    bin.install "fakekey"
  end

  test do
    system "#{bin}/fakekey", "--version"
  end
end
