cask "dayglass" do
  version "2.3.0"
  sha256 "79db085450579f44df115b167b18d39e489f2dfbb5dc615af3afe8e21cfa4c2a"

  url "https://github.com/IgorGanapolsky/dayglass-mac/releases/download/v#{version}/Dayglass.dmg"
  name "Dayglass"
  desc "On-device meeting notes and screen memory for macOS with local MCP server"
  homepage "https://igorganapolsky.github.io/dayglass-mac/"

  depends_on macos: ">= :ventura"

  app "Dayglass.app"

  zap trash: [
    "~/.dayglass",
    "~/Library/Application Support/Dayglass",
    "~/Library/Preferences/com.iganapolsky.dayglass.plist",
  ]
end
