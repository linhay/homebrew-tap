class Ski < Formula
  desc "SKIntelligence CLI"
  homepage "https://github.com/linhay/SKIntelligence"
  version "2.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.3/ski-macos-arm64.tar.gz"
      sha256 "7a2161cd0b9d0972a1566f2414088131cf4f1db6b2510567e85917653cd06daa"
    end
    on_intel do
      url "https://github.com/linhay/SKIntelligence/releases/download/2.0.3/ski-macos-x86_64.tar.gz"
      sha256 "ed8f49bbff7eb6ef2d0a0f40eec7f8138267c6b711d703e6a0ad48f4ed9085a2"
    end
  end

  def install
    bin.install "ski"
  end

  test do
    assert_match "SKIntelligence CLI", shell_output("#{bin}/ski --help")
  end
end
