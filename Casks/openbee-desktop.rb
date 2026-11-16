cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.7"
  sha256 arm:   "66f6e7bcdc1539255ca3d45c04bed5d60647b4f333a834f39b59f0b634e2e3dc",
         intel: "8caaa4d87ccbfb9e7a65dc6663fb72d7f324fed746b060f9e733b645ba0a4b9b"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.7/openbee-desktop-1.0.7-darwin-#{arch}.zip"
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
