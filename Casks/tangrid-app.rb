cask "tangrid-app" do
  version "1.5.10"
  sha256 "b66e230fb27074930f3ccb7667ac1529a8e0d706b893f918e8705c960ac0b5c1"

  url "https://github.com/winddpan/Tangrid/releases/download/1.5.10/tangrid-1.5.10.zip"
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