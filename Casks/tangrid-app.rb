cask "tangrid-app" do
  version "1.6.5"
  sha256 "100719653b7cea27b0959d15e8af362b189293c7c84fab5315fe4e9e4a5ba5cb"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.5/tangrid-1.6.5.zip"
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
