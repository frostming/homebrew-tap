cask "cappy" do
  version "0.0.2"
  sha256 "c12cc1c7586f13344ac46c2cb2ca1ff40757e7e2ca7da5a7a55520df45088965"

  url "https://github.com/frostming/cappy/releases/download/v#{version}/Cappy.app.zip"
  name "Cappy"
  desc "Screenshot tool with annotation, OCR, smart mosaic and decoration"
  homepage "https://github.com/frostming/cappy"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Cappy.app"

  zap trash: [
    "~/Library/Application Support/Cappy",
    "~/Library/Preferences/dev.fming.cappy.plist",
  ]
end
