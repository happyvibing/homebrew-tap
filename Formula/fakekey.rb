class Fakekey < Formula
  desc "API Key Proxy Agent - manage and replace API keys via network proxy"
  homepage "https://github.com/happyvibing/fakekey"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-arm64.tar.gz"
      sha256 "85714325449eeb34bad8eb4bc4a12e4a4c9e2e8439c5e4fae0f04638f60ab03c"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-macos-amd64.tar.gz"
      sha256 "813b9143fe767c8f7bacfa74eb616f8f8f2895d30811cb3a01c50ac1a2eef189"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-arm64.tar.gz"
      sha256 "726d70ba5320f6129257393c534d08c0baa772aee463f4ead57a1a4b57c90f6f"
    end
    on_intel do
      url "https://github.com/happyvibing/fakekey/releases/download/v#{version}/fakekey-linux-amd64.tar.gz"
      sha256 "40c291f3742560fc0ed988cd1d52edfe5a5cba19bec007101da92311c20ed814"
    end
  end

  def install
    bin.install "fakekey"
  end

  test do
    system "#{bin}/fakekey", "--version"
  end
end
