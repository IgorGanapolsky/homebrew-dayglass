cask "dayglass" do
  version "2.1.0"
  sha256 "769a66d2b6580f2ec36f348ec8524c1d7876ad55aecb9c25fe0b9b89c0abc877"

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
