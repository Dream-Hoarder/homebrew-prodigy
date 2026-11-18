class SecAudit < Formula
  desc "Zero-Trust Linux hardening & ADB forensic auditing utility"
  homepage "https://github.com/Dream-Hoarder/homebrew-prodigy"
  url "https://raw.githubusercontent.com/Dream-Hoarder/homebrew-prodigy/main/scripts/sec-audit.sh"
  version "1.0.0"
  sha256 "4eb297184e4b1660f88e4d6a47e5968260622539c997d2a43ac64c6f97869748"
  license "MIT"

  def install
    bin.install "sec-audit.sh" => "sec-audit"
  end

  test do
    assert_match "SEC-HARDEN", shell_output("#{bin}/sec-audit --version")
  end
end
