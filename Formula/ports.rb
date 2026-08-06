class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "bf5c0e30d6e109db62f199fb4b24cd4cd7fe5b90a3f8a9e30985e887a78c4295"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--help"
  end
end
