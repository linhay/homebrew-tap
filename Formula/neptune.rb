class Neptune < Formula
  desc "Neptune gateway CLI"
  homepage "https://github.com/NeptuneKit/neptune-gateway-swift"
  version "0.0.1"
  url "https://github.com/NeptuneKit/neptune-gateway-swift/releases/download/v0.0.1/"
  sha256 ""
  license "MIT"

  def install
    bin.install "" => "neptune"
  end

  test do
    output = shell_output("#{bin}/neptune --help", 0)
    assert_match "neptune", output.downcase
  end
end
