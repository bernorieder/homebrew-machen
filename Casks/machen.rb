cask "machen" do
  version "1.3"
  sha256 "f168cc6799da7b03f38be72beb3d562b4eb161e2bbde17f11ba66be075ce1614"

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
