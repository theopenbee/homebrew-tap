cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.11"
  sha256 arm:   "613b4898c49ecb4376a31522d3c081933ffdd398d19d56e6437054bf41d01061",
         intel: "d98a3fbf7e97847a3776eb4301c1331121393e66072727b13589c8b0a068306c"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.11/openbee-desktop-1.0.11-darwin-#{arch}.zip"
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
