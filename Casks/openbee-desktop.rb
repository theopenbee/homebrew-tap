cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.13"
  sha256 arm:   "b463b881eb3ca864360dc146eb92b7ae6c0c3e7d3e17c286cfa0f49e578509c8",
         intel: "47825b0924a313f5959aa1ce6c794da86f92bc723f55966fb8ffe60000d8e912"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.13/openbee-desktop-1.0.13-darwin-#{arch}.zip"
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
