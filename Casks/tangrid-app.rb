cask "tangrid-app" do
  version "1.6.2"
  sha256 "38dac5d8eed4818924c9ee8a0bee1f658d4328114812793d639b8cb51ee382d7"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.2/tangrid-1.6.2.zip"
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