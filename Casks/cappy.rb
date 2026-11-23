cask "cappy" do
  version "0.0.6"
  sha256 "5a46e066498214837a32c2f2ca13ed5b393b03ad95ead87b60b8bd68f1a259b8"

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
