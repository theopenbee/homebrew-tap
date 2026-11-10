cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.5"
  sha256 arm:   "a9584a29027dd7fc5c885a308df10b08d9f72e083d1763b890e477115e0e5efc",
         intel: "e9a54a43e93fc4e0704ef417b3a9926cf0e3460ca3e09e017bd1ee498d7b664e"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.5/openbee-desktop-1.0.5-darwin-#{arch}.zip"
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
