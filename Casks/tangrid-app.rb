cask "tangrid-app" do
  version "1.7.0"
  sha256 "e7f480895d05f8e8e95e99f9a2c3442fb9ada1768499e6734a86001aa5d7f127"

  url "https://github.com/winddpan/Tangrid/releases/download/1.7.0/tangrid-1.7.0.zip"
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
