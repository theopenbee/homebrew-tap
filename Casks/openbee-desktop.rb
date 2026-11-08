cask "openbee-desktop" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.0-beta1"
  sha256 arm:   "6b7baffef1607f28b83089774e910d0f585c0d895af2ec113dee8f262a456baf",
         intel: "31d09276d3ee24c897ea510c80e1a3853b4a3c7b90941fba16febf215364de81"

  url "https://github.com/theopenbee/openbee/releases/download/v1.0.0-beta1/openbee-desktop-1.0.0-beta1-darwin-#{arch}.zip"
  name "OpenBee"
  desc "Desktop app with the OpenBee server built in"
  homepage "https://github.com/theopenbee/openbee"

  livecheck do
    skip "Auto-generated on release."
  end

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
