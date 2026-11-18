class ProdigyWs < Formula
  desc "Pixel Prodigy Studios multi-OS project & sandbox environment bootstrapper"
  homepage "https://github.com/Dream-Hoarder/homebrew-prodigy"
  url "https://raw.githubusercontent.com/Dream-Hoarder/homebrew-prodigy/main/scripts/prodigy-ws.sh"
  version "1.0.0"
  sha256 "$(shasum -a 256 scripts/prodigy-ws.sh | awk '{print $1}')"
  license "MIT"

  def install
    bin.install "prodigy-ws.sh" => "prodigy-ws"
  end

  test do
    assert_match "Pixel Prodigy Studios", shell_output("#{bin}/prodigy-ws --version")
  end
end
