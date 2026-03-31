class Neptune < Formula
  desc "Neptune gateway CLI"
  homepage "https://github.com/NeptuneKit/neptune-gateway-swift"
  version "0.0.1"
  url "https://github.com/NeptuneKit/neptune-gateway-swift/releases/download/v0.0.1/neptune-v0.0.1"
  sha256 "6104fe88f73c074402b431e3f9aba1ad713f310b40adb6dcba561a2365da07a1"
  license "MIT"

  def install
    bin.install "neptune-v0.0.1" => "neptune"
  end

  test do
    output = shell_output("#{bin}/neptune --help", 0)
    assert_match "neptune", output.downcase
  end
end
