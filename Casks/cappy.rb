cask "cappy" do
  version "0.0.4"
  sha256 "4ec7093f2abb91aab53311bba5ff0cbecd95402cd8d792951d640e0abfb4d6ed"

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
