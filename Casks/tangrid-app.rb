cask "tangrid-app" do
  version "1.6.9"
  sha256 "c7c08f9e54d0ce062ea2ba532903b0429b76203c7ee6d87b2c23f71110a7957a"

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
