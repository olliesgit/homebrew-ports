class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "2d9a53a5ab4d2b7afb1297eb3ad64a0469c6b2b88a2134ff19e38010c1a0f09d"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--help"
  end
end
