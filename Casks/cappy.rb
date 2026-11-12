cask "cappy" do
  version "0.0.3"
  sha256 "31c78e215ec48aee123670fc6c39d190683efcd4c29656be05a06b5cacde6abe"

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
