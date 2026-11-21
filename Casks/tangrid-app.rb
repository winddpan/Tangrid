cask "tangrid-app" do
  version "1.7.1"
  sha256 "bebfd430632d77a2cd02f344ba542b53484f8b699fa49da10729aa61289a5740"

  url "https://github.com/winddpan/Tangrid/releases/download/1.7.1/tangrid-1.7.1.zip"
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
