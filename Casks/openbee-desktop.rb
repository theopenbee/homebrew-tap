cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.14"
  sha256 arm:   "9afc511a7e8055fbf9f95794e2489137b1af60f3c3dd46ad923e073ff4a96be6",
         intel: "9b5c06c140bdd7930058e86e7165f223b1fe44bc784708c67ec57a902de39ac1"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.14/openbee-desktop-1.0.14-darwin-#{arch}.zip"
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
