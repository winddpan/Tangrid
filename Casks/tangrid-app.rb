cask "tangrid-app" do
  version "1.6.8"
  sha256 "c3ea6e5b7b95cfb6ae10bbd4a50ffc6ed6583f7fca914ad6ee959fd67814b78c"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.8/tangrid-1.6.8.zip"
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
