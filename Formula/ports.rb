class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "c7cc4f3b16e795728b1a9f84cf0032fcb9c366dfecf5308083f6dc9f1a2b9d51"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--help"
  end
end
