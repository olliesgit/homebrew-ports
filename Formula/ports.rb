class Ports < Formula
  desc "CLI Ports Table - what's running on your macOS ports"
  homepage "https://github.com/olliesgit/cli-ports-table"
  url "https://github.com/olliesgit/cli-ports-table/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "bac25421700d89b4df76b98fc8522f4c2c38b0681d1f4afc0a836598daf28719"
  license "MIT"

  def install
    bin.install "ports.py" => "ports"
  end

  test do
    system "#{bin}/ports", "--help"
  end
end
