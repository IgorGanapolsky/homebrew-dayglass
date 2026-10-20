cask "dayglass" do
  version "2.1.0"
  sha256 "c87746cfbffd5216b3cf604f6a026ee0e850743fdbc647153dd4f71ffdb4af97"

  url "https://github.com/IgorGanapolsky/dayglass-mac/releases/download/v#{version}/Dayglass.dmg"
  name "Dayglass"
  desc "100% On-Device Screen & Meeting Memory for macOS with OpenUI Generative UI & 384K SubQ Snap GraphRAG"
  homepage "https://igorganapolsky.github.io/dayglass-mac/"

  depends_on macos: ">= :ventura"

  app "Dayglass.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Dayglass.app"],
                   sudo: false
  end
end
