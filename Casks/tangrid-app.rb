cask "tangrid-app" do
  version "1.6.6"
  sha256 "225ec57c9d50b05e504802ef8e40c196cff850194162d07c88e8c72fc3b9fb1a"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.6/tangrid-1.6.6.zip"
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
