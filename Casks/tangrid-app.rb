cask "tangrid-app" do
  version "1.6.9"
  sha256 "08d6ef03cb053786fc2bb79cbc1b1127c399f2b39adead5b6800e61ab9c27a7c"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.9/tangrid-1.6.9.zip"
  name "Tangrid"
  desc "Window manager with snapping, tiling, Window Switcher, Dock previews, Workspace"
  homepage "https://github.com/winddpan/Tangrid"

  livecheck do
    url "https://api.tangrid.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tangrid.app"

  zap trash: [
    "~/Library/Application Support/Tangrid",
    "~/Library/Caches/Tangrid",
    "~/Library/Preferences/com.wrapper.Tangrid.plist",
  ]
end
