cask "tangrid-app" do
  version "1.6.4"
  sha256 "97d929c6de58dfc1e70097927b9642aabde387e117f6ca3e2655f0c95b8e4665"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.4/tangrid-1.6.4.zip"
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
