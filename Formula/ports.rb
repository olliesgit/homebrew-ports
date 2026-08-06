class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.2.2.tar.gz"
  sha256 "38c89023603f4136e3e23ebb95542fc20659639c0125d6c12c84c7f5928eb685"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--self-test"
  end
end
