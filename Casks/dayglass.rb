cask "dayglass" do
  version "2.1.0"
  sha256 "d87ecd1d50f6e19636ce79243da484ea902b758e2f857dd8f0575b8324d9c2a2"

  url "https://github.com/IgorGanapolsky/homebrew-dayglass/releases/download/v#{version}/Dayglass.dmg"
  name "Dayglass"
  desc "100% On-Device Screen & Meeting Memory for macOS with OpenUI Generative UI & 384K SubQ Snap GraphRAG"
  homepage "https://igorganapolsky.github.io/dayglass/"

  depends_on macos: ">= :ventura"

  app "Dayglass.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Dayglass.app"],
                   sudo: false
  end
end
