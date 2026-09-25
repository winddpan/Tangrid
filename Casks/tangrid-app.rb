cask "tangrid-app" do
  version "1.6.7"
  sha256 "584031058563fb5320944d825603e3c789119dfd415eb0808266535e843c09c0"

  url "https://github.com/winddpan/Tangrid/releases/download/1.6.7/tangrid-1.6.7.zip"
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
