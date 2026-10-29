cask "machen" do
  version "1.2"
  sha256 "d994222d50084dafcba0b781be1c8fa9f75d9143bb9c1e2c61e1fa4b39b7947b"

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
