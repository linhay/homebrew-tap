class Ski < Formula
  desc "SKIntelligence CLI"
  homepage "https://github.com/linhay/SKIntelligence"
  version "2.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.2/ski-macos-arm64.tar.gz"
      sha256 "66c870fc5a5e4b14fe4b22ffe1b2dd50d0616ca0a4a81c8ae1edbbaedf2dbaeb"
    end
    on_intel do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.2/ski-macos-x86_64.tar.gz"
      sha256 "28ee2885bb00504a63e8e1a526996a14bbba4750cb61b1bd3874ad7fe6ae4c15"
    end
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match "SKIntelligence CLI", shell_output("#{bin}/ski --help")
  end
end
