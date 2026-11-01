cask "machen" do
  version "1.4"
  sha256 "c719cf690d5235aa64e0725eed4b0570d03b886239675764eb4d9ddc263433cb"

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
