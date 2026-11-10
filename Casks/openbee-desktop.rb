cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.4"
  sha256 arm:   "49247dbe987e2736c006ada5fd78447fa888cf084166f2da72c8965e6f774b46",
         intel: "8e7a9914eb82c7fb2a54379eec8f4cc39da442c3bed7dc826850605a82fe15f9"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.4/openbee-desktop-1.0.4-darwin-#{arch}.zip"
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
