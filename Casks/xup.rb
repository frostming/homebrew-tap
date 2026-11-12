cask "xup" do
  version "0.0.3"
  sha256 "6586479b2ccd255125c5b41e71849e989a46b5f47281ac1abf8bad4c197ee497"

  url "https://github.com/frostming/Xup/releases/download/v#{version}/Xup-#{version}-arm64.zip"
  name "Xup"
  desc "Menu bar updater for Homebrew, npm, uv, coding agents and apps"
  homepage "https://github.com/frostming/Xup"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :tahoe"

  app "Xup.app"
  binary "#{appdir}/Xup.app/Contents/Helpers/xup"

  zap trash: [
    "~/Library/Application Support/Xup",
    "~/Library/Caches/dev.fming.xup",
    "~/Library/Logs/Xup",
    "~/Library/Preferences/dev.fming.xup.plist",
  ]
end
