cask "cappy" do
  version "0.0.5"
  sha256 "d88969bdbe7a6eef5e24d8c0d188720131079dbf76727e7afb61f8a72ce6c085"

  url "https://github.com/frostming/cappy/releases/download/v#{version}/Cappy.app.zip"
  name "Cappy"
  desc "Screenshot tool with annotation, OCR, smart mosaic and decoration"
  homepage "https://github.com/frostming/cappy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Cappy.app"

  zap trash: [
    "~/Library/Application Support/Cappy",
    "~/Library/Preferences/dev.fming.cappy.plist",
  ]
end
