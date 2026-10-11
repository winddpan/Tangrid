cask "tangrid-app" do
  version "1.6.10"
  sha256 "37d973deec3714d40766c0c299cb5d7468d30b5f82fff7c2835b5c62cf9e81f0"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.10/tangrid-1.6.10.zip"
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
