class Ski < Formula
  desc "SKIntelligence CLI"
  homepage "https://github.com/linhay/SKIntelligence"
  version "2.0.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.4/ski-macos-arm64.tar.gz"
      sha256 "319ed284b34e53defd01d2489afc604f1a7655e9d1350225abb3dd96b2d4f04d"
    end
    on_intel do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.4/ski-macos-x86_64.tar.gz"
      sha256 "9bb1b878f2ce98ab816e31794bf6c2c49fbba1944943a52a0f5c0f8698c73fa0"
    end
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match "SKIntelligence CLI", shell_output("#{bin}/ski --help")
  end
end
