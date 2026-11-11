cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.6"
  sha256 arm:   "70264bdcf1055427c36aa45494f17014079f345175a2b6073f9d70fed713a620",
         intel: "5e839691d2edbf2d66f4e561ade86e8699e7ab4ef9ac63ae01a9b2da665125bc"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.6/openbee-desktop-1.0.6-darwin-#{arch}.zip"
  name "OpenBee"
  desc "Desktop app with the OpenBee server built in"
  homepage "https://github.com/theopenbee/openbee"

  livecheck do
    skip "Auto-generated on release."
  end

  auto_updates true
  depends_on :macos

  app "OpenBee.app"

  zap trash: [
    "~/Library/Application Support/OpenBee",
    "~/Library/Caches/OpenBee",
    "~/Library/Logs/OpenBee",
  ]
end
