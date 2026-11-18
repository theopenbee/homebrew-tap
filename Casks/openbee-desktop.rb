cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.9"
  sha256 arm:   "3be38e5abb6fb86a983f2b1b27d4424622e12eeac20c7d19437d82c924639972",
         intel: "49c23c5ccd3ebf175f1b48b940b4f23a5fb53dcda335763b46a074f489b4851a"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.9/openbee-desktop-1.0.9-darwin-#{arch}.zip"
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
