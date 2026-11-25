cask "tangrid-app" do
  version "1.7.3"
  sha256 "e08a5170e3909ffc7e97ad17a1b9bfca825a86c4754c0f1f2eea92b116c1c9f2"

  url "https://github.com/winddpan/Tangrid/releases/download/1.7.3/tangrid-1.7.3.zip"
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
