cask "tangrid" do
  version "1.5.8"
  sha256 "584c7a1aaaba5eddbc7b3df774fd3fde5de60a67540b29c3957b4093b8845e0b"

  url "https://github.com/winddpan/Tangrid/releases/download/1.5.8/tangrid-1.5.8.zip"
  name "Tangrid"
  desc "Window manager with snapping, tiling, and Winodw Switcher, Dock previews, Workspace"
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