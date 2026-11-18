class ProdigyWs < Formula
  desc "Pixel Prodigy Studios multi-OS project & sandbox environment bootstrapper"
  homepage "https://github.com/Dream-Hoarder/homebrew-prodigy"
  url "https://raw.githubusercontent.com/Dream-Hoarder/homebrew-prodigy/main/scripts/prodigy-ws.sh"
  version "1.0.0"
  sha256 "a819594da152375ed3f347c1e6ffa534b769ad6b74cba0800b5426cc57e38b78"
  license "MIT"

  def install
    bin.install "prodigy-ws.sh" => "prodigy-ws"
  end

  test do
    assert_match "Pixel Prodigy Studios", shell_output("#{bin}/prodigy-ws --version")
  end
end
