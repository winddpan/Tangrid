cask "tangrid-app" do
  version "1.5.9"
  sha256 "3afbc863f8e5a04d875f9b51e85644bd7eee4332cb5a415921eded00c9d34dd7"

  url "https://github.com/winddpan/Tangrid/releases/download/1.5.9/tangrid-1.5.9.zip"
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