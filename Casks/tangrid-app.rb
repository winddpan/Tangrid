cask "tangrid-app" do
  version "1.7.2"
  sha256 "1daa5f1aded6dc2098fc0302bd8f04225ba28ae3c841199bea8551b215bb4584"

  url "https://github.com/winddpan/Tangrid/releases/download/1.7.2/tangrid-1.7.2.zip"
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
