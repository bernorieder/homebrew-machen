cask "machen" do
  version "1.3.1"
  sha256 "06dc9ffb4d055fabe0598400f8f509d1a8c7c1ccb3bfd38960ff5b41697dfa1d"

  url "https://github.com/bernorieder/machen/releases/download/v#{version}/machen-#{version}.dmg"
  name "machen"
  desc "Menu bar app for Google Calendar events and Google Tasks"
  homepage "https://machen.polsys.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "machen.app"

  uninstall quit: "io.github.bernorieder.machen"

  zap trash: [
    "~/Library/Application Support/io.github.bernorieder.machen",
    "~/Library/Preferences/io.github.bernorieder.machen.plist",
  ]
end
