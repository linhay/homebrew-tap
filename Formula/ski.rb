class Ski < Formula
  desc "SKIntelligence CLI"
  homepage "https://github.com/linhay/SKIntelligence"
  version "2.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/linhay/SKIntelligence/archive/refs/tags/2.0.0.tar.gz"
      sha256 "16a1feb96a148198d9775cd808dbeddbc5806bb3575fd5492c1035c465b8cbf0"
    end
    on_intel do
      url "https://github.com/linhay/SKIntelligence/archive/refs/tags/2.0.0.tar.gz"
      sha256 "16a1feb96a148198d9775cd808dbeddbc5806bb3575fd5492c1035c465b8cbf0"
    end
  end

  depends_on "swift" => :build

  def install
    system "swift", "build", "-c", "release", "--product", "ski"
    bin.install ".build/release/ski"
  end

  test do
    assert_match "SKIntelligence CLI", shell_output("#{bin}/ski --help")
  end
end
