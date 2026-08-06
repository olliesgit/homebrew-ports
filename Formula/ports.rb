class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "afdabd03f5d38d1d5c7765b90151f80149fd1539fc923d0789ed93ce770ec99c"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--help"
  end
end
