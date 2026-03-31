class Neptune < Formula
  desc "Neptune gateway CLI"
  homepage "https://github.com/NeptuneKit/neptune-gateway-swift"
  version "0.0.2"
  url "https://github.com/NeptuneKit/neptune-gateway-swift/releases/download/v0.0.2/neptune-v0.0.2"
  sha256 "de9d8ec2fd2aaebc13ead752dd222cde791563faf39d58b195676ae64abd9b61"
  license "MIT"

  def install
    bin.install "neptune-v0.0.2" => "neptune"
  end

  test do
    output = shell_output("#{bin}/neptune --help", 0)
    assert_match "neptune", output.downcase
  end
end
