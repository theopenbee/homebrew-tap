cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm:   "ea6e4365ef685652a59e2bc3d7150fa91b9f52f8021aa0b627c33eec54d4819d",
         intel: "7e26eed6be7c42957c8a86048217f8994c16409b4fd2ddbd0de7d6349b5343fa"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.3/openbee-desktop-1.0.3-darwin-#{arch}.zip"
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

  caveats <<~EOS
    OpenBee is not notarized yet. If macOS refuses to open it, run:
      xattr -dr com.apple.quarantine "#{appdir}/OpenBee.app"
  EOS
end
